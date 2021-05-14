-- Exercício 2.2
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER PROMPT 'Insira um número:'
ACCEPT n2 NUMBER PROMPT 'Insira outro número:'
DECLARE
    soma INTEGER;
BEGIN
    soma := &n1 + &n2;
    IF (soma > 20) THEN
        dbms_output.put_line('Soma: ' || (soma + 8));
    ELSE
        dbms_output.put_line('Soma: ' || (soma + 5));
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER PROMPT 'Insira um número:'
ACCEPT n2 NUMBER PROMPT 'Insira outro número:'
DECLARE
    soma INTEGER;
BEGIN
    soma := &n1 + &n2;
    dbms_output.put_line(
        CASE
            WHEN (soma > 20) THEN
                'Soma: ' || (soma + 8)
            ELSE
                'Soma: ' || (soma + 5)
        END
    );
END;

-- Exercício 2.3
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    IF (MOD(&n, 3) = 0) THEN
        dbms_output.put_line('&n é múltiplo de 3');
    ELSE
        dbms_output.put_line('&n não é múltiplo de 3');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (MOD(&n, 3) = 0) THEN
                '&n é múltiplo de 3'
            ELSE
                '&n NÃO é múltiplo de 3'
        END
    );
END;

-- Exercício 2.4
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    IF (MOD(&n, 3) = 0) AND (MOD(&n, 7) = 0) THEN
        dbms_output.put_line('&n é múltiplo de 3 e de 7');
    ELSE
        dbms_output.put_line('&n NÃO é múltiplo de 3 e de 7');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN ((MOD(&n, 3) = 0) AND (MOD(&n, 7) = 0)) THEN
                '&n é múltiplo de 3 e de 7'
            ELSE
                '&n NÃO é múltiplo de 3 e de 7'
        END
    );
END;

-- Exercício 2.5
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT salario NUMBER FORMAT '99999.99' PROMPT 'Insira o valor do salário:'
ACCEPT parcela NUMBER FORMAT '99999.99' PROMPT 'Insira o valor da parcela:'
BEGIN
    IF (&parcela > (&salario*0.3)) THEN
        dbms_output.put_line('O empréstimo não pode ser concedido');
    ELSE
        dbms_output.put_line('O empréstimo pode ser concedido');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT salario NUMBER PROMPT 'Insira o valor do salário:'
ACCEPT parcela NUMBER PROMPT 'Insira o valor da parcela:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (&parcela > (&salario*0.3)) THEN
                'O empréstimo não pode ser concedido'
            ELSE
                'O empréstimo pode ser concedido'
        END
    );
END;

-- Exercício 2.6
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT estado CHAR PROMPT 'Insira a sigla de um estado brasileiro:'
BEGIN
    IF ('&estado' = 'AC') THEN dbms_output.put_line('Acriano');
    ELSIF ('&estado' = 'AL') THEN dbms_output.put_line('Alagoano');
    ELSIF ('&estado' = 'AP') THEN dbms_output.put_line('Amapaense');
    ELSIF ('&estado' = 'AM') THEN dbms_output.put_line('Amazonense');
    ELSIF ('&estado' = 'BA') THEN dbms_output.put_line('Baiano');
    ELSIF ('&estado' = 'CE') THEN dbms_output.put_line('Cearense');
    ELSIF ('&estado' = 'DF') THEN dbms_output.put_line('Brasiliense');
    ELSIF ('&estado' = 'ES') THEN dbms_output.put_line('Espírito-santense');
    ELSIF ('&estado' = 'GO') THEN dbms_output.put_line('Goiano');
    ELSIF ('&estado' = 'MA') THEN dbms_output.put_line('Maranhense');
    ELSIF ('&estado' = 'MT') THEN dbms_output.put_line('Mato-grossense');
    ELSIF ('&estado' = 'MS') THEN dbms_output.put_line('Sul-mato-grossense');
    ELSIF ('&estado' = 'MG') THEN dbms_output.put_line('Mineiro');
    ELSIF ('&estado' = 'PA') THEN dbms_output.put_line('Paraense');
    ELSIF ('&estado' = 'PB') THEN dbms_output.put_line('Paraibano');
    ELSIF ('&estado' = 'PR') THEN dbms_output.put_line('Paranaense');
    ELSIF ('&estado' = 'PE') THEN dbms_output.put_line('Pernambucano');
    ELSIF ('&estado' = 'PI') THEN dbms_output.put_line('Piauiense');
    ELSIF ('&estado' = 'RJ') THEN dbms_output.put_line('Fluminense');
    ELSIF ('&estado' = 'RN') THEN dbms_output.put_line('Norte-rio-grandense');
    ELSIF ('&estado' = 'RS') THEN dbms_output.put_line('Sul-rio-grandense');
    ELSIF ('&estado' = 'RO') THEN dbms_output.put_line('Rondoniano');
    ELSIF ('&estado' = 'RR') THEN dbms_output.put_line('Roraimense');
    ELSIF ('&estado' = 'SC') THEN dbms_output.put_line('Catarinense');
    ELSIF ('&estado' = 'SP') THEN dbms_output.put_line('Paulista');
    ELSIF ('&estado' = 'SE') THEN dbms_output.put_line('Sergipano');
    ELSIF ('&estado' = 'TO') THEN dbms_output.put_line('Tocantinense');
    ELSE dbms_output.put_line('A sigla &estado é inválida');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT estado CHAR PROMPT 'Insira a sigla de um estado brasileiro:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN ('&estado' = 'AC') THEN 'Acriano'
            WHEN ('&estado' = 'AL') THEN 'Alagoano'
            WHEN ('&estado' = 'AP') THEN 'Amapaense'
            WHEN ('&estado' = 'AM') THEN 'Amazonense'
            WHEN ('&estado' = 'BA') THEN 'Baiano'
            WHEN ('&estado' = 'CE') THEN 'Cearense'
            WHEN ('&estado' = 'DF') THEN 'Brasiliense'
            WHEN ('&estado' = 'ES') THEN 'Espírito-santense'
            WHEN ('&estado' = 'GO') THEN 'Goiano'
            WHEN ('&estado' = 'MA') THEN 'Maranhense'
            WHEN ('&estado' = 'MT') THEN 'Mato-grossense'
            WHEN ('&estado' = 'MS') THEN 'Sul-mato-grossense'
            WHEN ('&estado' = 'MG') THEN 'Mineiro'
            WHEN ('&estado' = 'PA') THEN 'Paraense'
            WHEN ('&estado' = 'PB') THEN 'Paraibano'
            WHEN ('&estado' = 'PR') THEN 'Paranaense'
            WHEN ('&estado' = 'PE') THEN 'Pernambucano'
            WHEN ('&estado' = 'PI') THEN 'Piauiense'
            WHEN ('&estado' = 'RJ') THEN 'Fluminense'
            WHEN ('&estado' = 'RN') THEN 'Norte-rio-grandense'
            WHEN ('&estado' = 'RS') THEN 'Sul-rio-grandense'
            WHEN ('&estado' = 'RO') THEN 'Rondoniano'
            WHEN ('&estado' = 'RR') THEN 'Roraimense'
            WHEN ('&estado' = 'SC') THEN 'Catarinense'
            WHEN ('&estado' = 'SP') THEN 'Paulista'
            WHEN ('&estado' = 'SE') THEN 'Sergipano'
            WHEN ('&estado' = 'TO') THEN 'Tocantinense'
            ELSE 'A sigla &estado é inválida'
        END
    );
END;

-- Exercício 2.7
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER PROMPT 'Insira um número:'
ACCEPT n2 NUMBER PROMPT 'Insira outro número:'
ACCEPT n3 NUMBER PROMPT 'Insira um último número:'
BEGIN
    IF (&n1 < &n2) THEN 
        IF (&n1 < &n3) THEN 
            IF (&n2 < &n3) THEN 
                dbms_output.put_line('&n1 < &n2 < &n3');
            ELSE
                dbms_output.put_line('&n1 < &n3 < &n2');
            END IF;
        ELSE
            dbms_output.put_line('&n3 < &n1 < &n2');
        END IF;
    ELSE
        IF (&n2 < &n3) THEN 
            IF (&n1 < &n3) THEN 
                dbms_output.put_line('&n2 < &n1 < &n3');
            ELSE
                dbms_output.put_line('&n2 < &n3 < &n1');
            END IF;
        ELSE
            dbms_output.put_line('&n3 < &n2 < &n1');
        END IF;
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER PROMPT 'Insira um número:'
ACCEPT n2 NUMBER PROMPT 'Insira outro número:'
ACCEPT n3 NUMBER PROMPT 'Insira um último número:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (&n1 < &n2) AND (&n2 < &n3) THEN '&n1 < &n2 < &n3'
            WHEN (&n1 < &n3) AND (&n3 < &n2) THEN '&n1 < &n3 < &n2'
            WHEN (&n2 < &n1) AND (&n1 < &n3) THEN '&n2 < &n1 < &n3'
            WHEN (&n2 < &n3) AND (&n3 < &n1) THEN '&n2 < &n3 < &n1'
            WHEN (&n3 < &n1) AND (&n1 < &n2) THEN '&n3 < &n1 < &n2'
            ELSE '&n3 < &n2 < &n1'
        END
    );
END;

-- Exercício 2.8
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT altura NUMBER FORMAT '999.99' PROMPT 'Insira sua altura (em metros):'
ACCEPT sexo CHAR PROMPT 'Insira seu sexo (M ou F):'
BEGIN
    IF (UPPER('&sexo') = 'M') THEN
        dbms_output.put_line('O peso ideal para hoemens com &altura m é ' || ROUND(72.2 * &altura - 58, 2) || ' kg');
    ELSIF (UPPER('&sexo') = 'F') THEN
        dbms_output.put_line('O peso ideal para mulheres com &altura m é ' || ROUND(62.1 * &altura - 44.7, 2) || ' kg');
    ELSE
        dbms_output.put_line('O sexo informado é inválido');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT altura NUMBER FORMAT '999.99' PROMPT 'Insira sua altura (em metros):'
ACCEPT sexo CHAR PROMPT 'Insira seu sexo (M ou F):'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (UPPER('&sexo') = 'M') THEN 'O peso ideal para hoemens com &altura m é ' || ROUND(72.2 * &altura - 58, 2) || ' kg'
            WHEN (UPPER('&sexo') = 'F') THEN 'O peso ideal para mulheres com &altura m é ' || ROUND(62.1 * &altura - 44.7, 2) || ' kg'
            ELSE 'O sexo informado é inválido'
        END
    );
END;

-- Exercício 2.10
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT a NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente a:'
ACCEPT b NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente b:'
ACCEPT c NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente c:'
DECLARE
    delta NUMBER;
BEGIN
    delta := &b * &b - 4 * &a * &c;
    IF (delta > 0) THEN
        dbms_output.put_line('As raizes da função "f(x) = &a'||'x² + &b'||'x + &c" são ' || ROUND((- &b + SQRT(delta))/2*&a, 2) || ' e ' || ROUND((- &b - SQRT(delta))/2*&a, 2));
    ELSIF (delta = 0) THEN
        dbms_output.put_line('As raiz da função "f(x) = &a'||'x² + &b'||'x + &c" é ' || ROUND((- &b + SQRT(delta))/2*&a, 2));
    ELSE
        dbms_output.put_line('A função "f(x) = &a'||'x² + &b'||'x + &c" não possui raizes');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT a NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente a:'
ACCEPT b NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente b:'
ACCEPT c NUMBER FORMAT '9999.99' PROMPT 'Insira o coeficiente c:'
DECLARE
    delta NUMBER;
BEGIN
    delta := &b * &b - 4 * &a * &c;
    dbms_output.put_line(
        CASE
            WHEN (delta > 0) THEN 
                'As raizes da função "f(x) = &a'||'x² + &b'||'x + &c" são ' || ROUND((- &b + SQRT(delta))/2*&a, 2) || ' e ' || ROUND((- &b - SQRT(delta))/2*&a, 2)
            WHEN (delta = 0) THEN 
                'As raiz da função "f(x) = &a'||'x² + &b'||'x + &c" é ' || ROUND((- &b + SQRT(delta))/2*&a, 2)
            ELSE 
                'A função "f(x) = &a'||'x² + &b'||'x + &c" não possui raizes'
        END
    );
END;

-- Exercício 2.11
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    IF (&n = 1) THEN dbms_output.put_line('&n corresponde ao mês de Janeiro');
    ELSIF (&n = 2) THEN dbms_output.put_line('&n corresponde ao mês de Fevereiro');
    ELSIF (&n = 3) THEN dbms_output.put_line('&n corresponde ao mês de Março');
    ELSIF (&n = 4) THEN dbms_output.put_line('&n corresponde ao mês de Abril');
    ELSIF (&n = 5) THEN dbms_output.put_line('&n corresponde ao mês de Maio');
    ELSIF (&n = 6) THEN dbms_output.put_line('&n corresponde ao mês de Junho');
    ELSIF (&n = 7) THEN dbms_output.put_line('&n corresponde ao mês de Julho');
    ELSIF (&n = 8) THEN dbms_output.put_line('&n corresponde ao mês de Agosto');
    ELSIF (&n = 9) THEN dbms_output.put_line('&n corresponde ao mês de Setembro');
    ELSIF (&n = 10) THEN dbms_output.put_line('&n corresponde ao mês de Outubro');
    ELSIF (&n = 11) THEN dbms_output.put_line('&n corresponde ao mês de Novembro');
    ELSIF (&n = 12) THEN dbms_output.put_line('&n corresponde ao mês de Dezembro');
    ELSE dbms_output.put_line('O número &n não corresponde a nenhum mês');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Insira um número:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (&n = 1) THEN '&n corresponde ao mês de Janeiro'
            WHEN (&n = 2) THEN '&n corresponde ao mês de Fevereiro'
            WHEN (&n = 3) THEN '&n corresponde ao mês de Março'
            WHEN (&n = 4) THEN '&n corresponde ao mês de Abril'
            WHEN (&n = 5) THEN '&n corresponde ao mês de Maio'
            WHEN (&n = 6) THEN '&n corresponde ao mês de Junho'
            WHEN (&n = 7) THEN '&n corresponde ao mês de Julho'
            WHEN (&n = 8) THEN '&n corresponde ao mês de Agosto'
            WHEN (&n = 9) THEN '&n corresponde ao mês de Setembro'
            WHEN (&n = 10) THEN '&n corresponde ao mês de Outubro'
            WHEN (&n = 11) THEN '&n corresponde ao mês de Novembro'
            WHEN (&n = 12) THEN '&n corresponde ao mês de Dezembro'
            ELSE 'O número &n não corresponde a nenhum mês'
        END
    );
END;

-- Exercício 2.12
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT nome CHAR PROMPT 'Insira o nome do município:'
ACCEPT eleitores NUMBER PROMPT 'Insira a quantidade de eleitores aptos:'
ACCEPT votos NUMBER PROMPT 'Insira a quantidade de votos do primeiro colocado:'
BEGIN
    IF (&eleitores > 20000) AND (&votos > &eleitores/2) THEN
        dbms_output.put_line('Haverá segundo turno em &nome');
    ELSE
        dbms_output.put_line('Não haverá segundo turno em &nome');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT nome CHAR PROMPT 'Insira o nome do município:'
ACCEPT eleitores NUMBER PROMPT 'Insira a quantidade de eleitores aptos:'
ACCEPT votos NUMBER PROMPT 'Insira a quantidade de votos do primeiro colocado:'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (&eleitores > 20000) AND (&votos > &eleitores/2) THEN
                'Haverá segundo turno em &nome'
            ELSE
                'Não haverá segundo turno em &nome'
        END
    );
END;

-- Exercício 2.13
-- Usando IF
SET SERVEROUTPUT ON;
ACCEPT quilometros NUMBER FORMAT '999.99' PROMPT 'Insira a quantidade de quilometros da viagem:'
ACCEPT tipo CHAR PROMPT 'Insira o tipo de carro (A, B ou C):'
BEGIN
    IF (UPPER('&tipo') = 'A') THEN dbms_output.put_line('O gasto estimado de combustível é de ' || ROUND(&quilometros/12, 2) || ' Litros');
    ELSIF (UPPER('&tipo') = 'B') THEN dbms_output.put_line('O gasto estimado de combustível é de ' || ROUND(&quilometros/9, 2) || ' Litros');
    ELSIF (UPPER('&tipo') = 'C') THEN dbms_output.put_line('O gasto estimado de combustível é de ' || ROUND(&quilometros/8, 2) || ' Litros');
    ELSE dbms_output.put_line('O tipo de carro digitado é inválido');
    END IF;
END;
-- Usando CASE
SET SERVEROUTPUT ON;
ACCEPT quilometros NUMBER FORMAT '999.99' PROMPT 'Insira a quantidade de quilometros da viagem:'
ACCEPT tipo CHAR PROMPT 'Insira o tipo de carro (A, B ou C):'
BEGIN
    dbms_output.put_line(
        CASE
            WHEN (UPPER('&tipo') = 'A') THEN 'O gasto estimado de combustível é de ' || ROUND(&quilometros/12, 2) || ' Litros'
            WHEN (UPPER('&tipo') = 'B') THEN 'O gasto estimado de combustível é de ' || ROUND(&quilometros/9, 2) || ' Litros'
            WHEN (UPPER('&tipo') = 'C') THEN 'O gasto estimado de combustível é de ' || ROUND(&quilometros/8, 2) || ' Litros'
            ELSE 'O tipo de carro digitado é inválido'
        END
    );
END;


