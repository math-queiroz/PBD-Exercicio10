-- Exerc�cio 1.1
SET SERVEROUTPUT ON;
BEGIN
    dbms_output.put_line('� preciso treinar para aprender');
END;
    
-- Exerc�cio 1.3
SET SERVEROUTPUT ON;
BEGIN
    dbms_output.put_line('28 * 43 = ' || 28 * 43);
END;

-- Exerc�cio 1.6
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER FORMAT '99999.99' PROMPT 'Digite o primeiro n�mero:';
ACCEPT p1 NUMBER PROMPT 'Digite o peso do primeiro n�mero:';
ACCEPT n2 NUMBER FORMAT '99999.99' PROMPT 'Digite o segundo n�mero:';
ACCEPT p2 NUMBER PROMPT 'Digite o peso do segundo n�mero:';
ACCEPT n3 NUMBER FORMAT '99999.99' PROMPT 'Digite o terceiro n�mero:';
ACCEPT p3 NUMBER PROMPT 'Digite o peso do terceiro n�mero:';
DECLARE
    soma_ponderada NUMBER;
    soma_pesos NUMBER;
    media NUMBER;
BEGIN
    soma_ponderada := &n1*&p1 + &n2*&p2 + &n3*&p3;
    soma_pesos := &p1 + &p2 + &p3;
    media := soma_ponderada / soma_pesos;
    dbms_output.put_line('A m�dia ponderada dos valores informados � ' || ROUND(media, 2));
END;

-- Exerc�cio 1.7
SET SERVEROUTPUT ON;
ACCEPT n NUMBER PROMPT 'Digite um n�mero:';
BEGIN
    dbms_output.put_line('O antecessor de &n � ' || (&n-1));
END;

-- Exerc�cio 1.8
SET SERVEROUTPUT ON;
ACCEPT nome CHAR PROMPT 'Digite seu nome:';
ACCEPT telefone CHAR PROMPT 'Digite seu telefone:';
ACCEPT endereco CHAR PROMPT 'Digite seu endereco:';
BEGIN
    dbms_output.put_line('Nome: &nome');
    dbms_output.put_line('Telefone: &telefone');
    dbms_output.put_line('Endere�o: &endereco');
END;

--Exerc�cio 1.9
SET SERVEROUTPUT ON;
ACCEPT n1 NUMBER PROMPT 'Digite o primeiro n�mero:';
ACCEPT n2 NUMBER PROMPT 'Digite o segundo n�mero:';
BEGIN
    dbms_output.put_line('&n1 dividido por &n2 � igual a ' || &n1 / &n2 || ' com resto de ' || MOD(&n1, &n2));
    EXCEPTION
        WHEN ZERO_DIVIDE THEN
            dbms_output.put_line('O divisor n�o pode ser igual a zero!');
END;

--Exerc�cio 1.10
SET SERVEROUTPUT ON;
ACCEPT salario NUMBER PROMPT 'Digite o salario:';
BEGIN
    dbms_output.put_line('O sal�rio de R$ &salario com aumento de 1% vale R$ ' || ROUND(&salario*1.01, 2));
END;

--Exerc�cio 1.11
SET SERVEROUTPUT ON;
ACCEPT salario NUMBER FORMAT '99999.99' PROMPT 'Digite o salario:';
ACCEPT aumento NUMBER PROMPT 'Digite o percentual de aumento (entre 0 e 100):';
BEGIN
    dbms_output.put_line('O sal�rio de R$ &salario com aumento de &aumento% vale R$' || ROUND(&salario*(1+&aumento/100), 2));
END;

--Exerc�cio 1.12
SET SERVEROUTPUT ON;
ACCEPT base NUMBER PROMPT 'Digite o valor da base do ret�ngulo:';
ACCEPT lado NUMBER PROMPT 'Digite o valor da altura do ret�ngulo:';
BEGIN
    dbms_output.put_line('�rea: ' || &base*&lado);
    dbms_output.put_line('Per�metro: ' || (&base+&lado)*2);
    dbms_output.put_line('Diagonal: ' || SQRT(&base*&base+&lado*&lado));
END;

--Exerc�cio 1.13
SET SERVEROUTPUT ON;
ACCEPT nome CHAR PROMPT 'Digite o seu nome:';
DECLARE
    len NUMBER;
BEGIN
    len := LENGTH('&nome');
    dbms_output.put_line('Primeiro caractere: ' || SUBSTR('&nome', 1, 1));
    dbms_output.put_line('�ltimo caractere: ' || SUBSTR('&nome', len, 1));
    dbms_output.put_line('Primeiro ao terceiro caractere: ' || SUBSTR('&nome', 1, 3));
    dbms_output.put_line('Quarto caractere: ' || SUBSTR('&nome', 4, 1));
    dbms_output.put_line('Todos os caracteres menos o primeiro: ' || SUBSTR('&nome', 2, len-1));
    dbms_output.put_line('Todos os caracteres menos os dois �ltimos: ' || SUBSTR('&nome', 0, len-2));
END;

--Exerc�cio 1.14
SET SERVEROUTPUT ON;
ACCEPT base NUMBER PROMPT 'Digite o valor da base do tri�ngulo:';
ACCEPT altura NUMBER PROMPT 'Digite o valor da altura do tri�ngulo:';
BEGIN
    dbms_output.put_line('�rea do tri�ngulo: ' || (&base*&altura/2));
END;

--Exerc�cio 1.15
SET SERVEROUTPUT ON;
ACCEPT c1 NUMBER PROMPT 'Digite o valor do primeiro cateto:';
ACCEPT c2 NUMBER PROMPT 'Digite o valor do segundo cateto:';
BEGIN
    dbms_output.put_line('A hipotenusa do tri�ngulo ret�ngulo de catetos &c1 e &c2 mede ' || SQRT(&c1*&c1+&c2*&c2));
END;

--Exerc�cio 1.16
SET SERVEROUTPUT ON;
ACCEPT valor NUMBER FORMAT '99999.99' PROMPT 'Digite o valor do produto:';
BEGIN
    dbms_output.put_line('O produto que custa R$ &valor com um desconto de 9% passa a custar R$ ' || ROUND(&valor*0.91, 2));
END;

--Exerc�cio 1.17
SET SERVEROUTPUT ON;
ACCEPT temp NUMBER FORMAT '999.99' PROMPT 'Digite uma temperatura em graus Celsius:';
BEGIN
    dbms_output.put_line('&temp' || '�C convertido para graus Farenheit vale ' || (1.8*&temp+32) || '�F');
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Valores inv�lidos digitados');
END;

--Exerc�cio 1.18
SET SERVEROUTPUT ON;
ACCEPT deg NUMBER FORMAT '999.99' PROMPT 'Digite uma medida de �ngulo em graus:';
DECLARE
    rad REAL;
BEGIN
    rad := &deg * 0.01745329251994329576923690768489;
    dbms_output.put_line('Seno: ' || SIN(rad));
    dbms_output.put_line('Cosseno: ' || COS(rad));
    dbms_output.put_line('Tangente: ' || TAN(rad));
    dbms_output.put_line('Cossecante: ' || 1/SIN(rad));
    dbms_output.put_line('Secante: ' || 1/COS(rad));
    dbms_output.put_line('Cotangente: ' || 1/TAN(rad));
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Valores inv�lidos digitados');
END;

--Exerc�cio 1.19
SET SERVEROUTPUT ON;
ACCEPT valor NUMBER FORMAT '99999.99' PROMPT 'Digite um valor real positivo e diferente de zero:';
BEGIN
    dbms_output.put_line('O logaritmo de &valor na base 10 � ' || LOG(10, &valor));
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Valores inv�lidos digitados');
END;

--Exerc�cio 1.20
SET SERVEROUTPUT ON;
ACCEPT valor_a NUMBER FORMAT '99999.99' PROMPT 'Digite um valor real positivo e diferente de zero:';
ACCEPT valor_b NUMBER FORMAT '99999.99' PROMPT 'Digite outro valor real positivo e diferente de zero:';
BEGIN
    dbms_output.put_line('O logaritmo de &valor_a na base &valor_b � ' || LOG(&valor_b, &valor_a));
    EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Valores inv�lidos digitados');
END;

