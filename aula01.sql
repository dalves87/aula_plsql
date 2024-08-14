--Especifica��o (Specification)
CREATE OR REPLACE PACKAGE PKG_CALCULADORA IS
    PROCEDURE CALCULA_REAJUSTE(P_SAL_ATUAL IN NUMBER);
    FUNCTION CONVERTE_DOLAR(V_DOLAR IN NUMBER) RETURN NUMBER;
END PKG_CALCULADORA;
/

--Corpo (Body)
CREATE OR REPLACE PACKAGE BODY PKG_CALCULADORA IS
    PROCEDURE CALCULA_REAJUSTE(P_SAL_ATUAL IN NUMBER) IS
        V_SAL_REAJ NUMBER(7,2);
    BEGIN
        V_SAL_REAJ := P_SAL_ATUAL * 1.25;
        DBMS_OUTPUT.PUT_LINE('SAL�RIO ATUAL - R$: ' ||P_SAL_ATUAL);
        DBMS_OUTPUT.PUT_LINE('SAL�RIO REAJUSTADO - R$: ' ||V_SAL_REAJ);
    END CALCULA_REAJUSTE;
    
    FUNCTION CONVERTE_DOLAR(V_DOLAR IN NUMBER) RETURN NUMBER IS
    
    BEGIN
       NULL;
    END CONVERTE_DOLAR;

END PKG_CALCULADORA;
/