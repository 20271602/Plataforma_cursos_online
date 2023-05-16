create schema platafroma_cursos_online;

create table curso (
	id INT NOT NULL AUTO_INCREMENT,
    inicio INT NOT NULL,
    finalizacion INT NOT NULL,
    temario  VARCHAR(200),
    modalidad VARCHAR(50),
    precio INT NOT NULL,
    PRIMARY KEY(id)
);

create table profesor (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    edad INT,
    años_de_experiencia INT,
    sueldo INT NOT NULL,
    PRIMARY KEY(id)
);

create table tutor (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    edad INT,
    años_de_experiencia INT,
    sueldo INT NOT NULL,
    PRIMARY KEY(id)
);

create table comisión (
	id INT NOT NULL AUTO_INCREMENT,
    id_curso INT NOT NULL,
    id_profesor INT NOT NULL,
    id_tutor INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_curso) REFERENCES curso(id),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id),
    FOREIGN KEY (id_tutor) REFERENCES tutor(id)
);

create table alumno (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(30),
    edad INT,
    mail VARCHAR(50),
    motivo_de_inscripción VARCHAR(200),
    PRIMARY KEY(id)
);

create table inscripción (
	id INT NOT NULL AUTO_INCREMENT,
    id_alumno INT NOT NULL,
    id_comisión INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (id_alumno) REFERENCES alumno(id),
    FOREIGN KEY (id_comisión) REFERENCES comisión(id)
);

create table pago (
	id INT NOT NULL AUTO_INCREMENT,
    id_inscripción INT NOT NULL,
    método_de_pago VARCHAR(50),
    plan_de_pago VARCHAR(50),
    código_de_descuento VARCHAR(30),
    beca INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_inscripción) REFERENCES inscripción(id)
);


