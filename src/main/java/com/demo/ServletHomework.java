package com.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.IOException;
import java.text.DecimalFormat;


@WebServlet("/DemoServlet")
public class ServletHomework extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String amount = request.getParameter("amount");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Welcome " + amount + "</h3>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String amount = request.getParameter("amount");
        //emptyChecker(amount, response);
        Double amountParsed = Double.parseDouble(amount);

        String numOfInstallments = request.getParameter("quantity");
        //emptyChecker(numOfInstallments, response);
        Integer numOfInstallmentsParsed = Integer.parseInt(numOfInstallments);

        String interest = request.getParameter("percentage");
        //emptyChecker(interest, response);
        Double interestParsed = Double.parseDouble(interest);

        String fixedFee = request.getParameter("fixedFee");
        //emptyChecker(fixedFee, response);
        Double fixedFeeParsed = Double.parseDouble(fixedFee);

        String type = request.getParameter("type");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        out.println("<h1>Amount:  " + amountParsed + "</h1>");
        out.println("<h1>Number of installments:  " + numOfInstallmentsParsed + "</h1>");
        out.println("<h1>Interest:  " + interestParsed + "%</h1>");
        out.println("<h1>Fixed fee:  " + fixedFeeParsed + "</h1>");
        out.println("<h1>Type:  " + type + "</h1>");

        installmentsCalc(amountParsed, numOfInstallmentsParsed, interestParsed, fixedFeeParsed, type, response, request);
    }

    private void emptyChecker(String value, HttpServletResponse response)throws ServletException, IOException{
        if(value==null || value.equals("")){
            response.sendRedirect("/javaee-web-api/");
        }
    }

    private void installmentsCalc(double amount, int numOfInstallments, double interest, double fixedFee, String type, HttpServletResponse response, HttpServletRequest request)throws ServletException, IOException{
        PrintWriter out = response.getWriter();
        Integer[] numOfInstallmentsA = new Integer[numOfInstallments+1];
        Double[] capitalPartA = new Double[numOfInstallments+1];
        Double[] interestPartA = new Double[numOfInstallments+1];
        Double[] interestAllsA = new Double[numOfInstallments+1];
        interest = interest/100;

        DecimalFormat df = new DecimalFormat("####0.00");

        if (type.equals("decreasing")){

            double capitalPart, interestPart, interestAll=0,diff = amount;
            int numOfInterestsPerYear = 12;

            for (int i = 1; i<=numOfInstallments; i++){
                diff-=interestAll;
                capitalPart = amount/numOfInstallments;
                interestPart = (diff *interest) / numOfInterestsPerYear;
                if (interestPart<=0) interestPart = 0;
                interestAll = capitalPart + interestPart + fixedFee;

                numOfInstallmentsA [i-1] = i;
                capitalPartA [i-1] = capitalPart;
                interestPartA [i-1] = interestPart;
                interestAllsA [i-1] = interestAll;

                request.setAttribute("interestPart", interestPartA);
                request.setAttribute("capitalPart", capitalPartA);
                request.setAttribute("interestAll", interestAllsA);
                request.setAttribute("numOfInstallments", numOfInstallmentsA);
                request.setAttribute("fixedFee", fixedFee);






                /*out.println("<h2>Installment #" + i + "</h2>");
                out.println("<h3>Capital part: " + df.format(capitalPart) + "zł</h3>");
                out.println("<h3>Interest part: " + df.format(interestPart) + "zł</h3>");
                out.println("<h3>Fixed fee: " + df.format(fixedFee) + "zł</h3>");
                out.println("<h3>Installment together : " + df.format(interestAll) + "zł</h3>");*/
                }
            request.getRequestDispatcher("/pages/recive.jsp").forward(request, response);
        }else if (type.equals("constant")){
            double interestAll = 0, qFactor, pow, diff = amount,interestPart, capitalPart;

            for (int i = 1; i<=numOfInstallments; i++) {
                diff-=interestAll;
                qFactor = 1 + (interest / 12);
                pow = Math.pow(qFactor, numOfInstallments);

                interestAll = ((amount * pow * (qFactor - 1)) / (pow - 1));
                interestPart = diff*(interest/12);
                capitalPart = interestAll - interestPart;
                interestAll = fixedFee + capitalPart + interestPart;


                numOfInstallmentsA [i-1] = i;
                capitalPartA [i-1] = capitalPart;
                interestPartA [i-1] = interestPart;
                interestAllsA [i-1] = interestAll;

                request.setAttribute("interestPart", interestPartA);
                request.setAttribute("capitalPart", capitalPartA);
                request.setAttribute("interestAll", interestAllsA);
                request.setAttribute("numOfInstallments", numOfInstallmentsA);
                request.setAttribute("fixedFee", fixedFee);





            }

            request.getRequestDispatcher("/pages/recive.jsp").forward(request, response);
        }
    }
}
