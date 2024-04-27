function varargout = SIMULADOR_CINEMATICO(varargin)
% SIMULADOR_CINEMATICO MATLAB code for SIMULADOR_CINEMATICO.fig
%      SIMULADOR_CINEMATICO, by itself, creates a new SIMULADOR_CINEMATICO or raises the existing
%      singleton*.
%
%      H = SIMULADOR_CINEMATICO returns the handle to a new SIMULADOR_CINEMATICO or the handle to
%      the existing singleton*.
%
%      SIMULADOR_CINEMATICO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMULADOR_CINEMATICO.M with the given input arguments.
%
%      SIMULADOR_CINEMATICO('Property','Value',...) creates a new SIMULADOR_CINEMATICO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SIMULADOR_CINEMATICO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SIMULADOR_CINEMATICO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SIMULADOR_CINEMATICO

% Last Modified by GUIDE v2.5 25-Apr-2024 16:32:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SIMULADOR_CINEMATICO_OpeningFcn, ...
                   'gui_OutputFcn',  @SIMULADOR_CINEMATICO_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SIMULADOR_CINEMATICO is made visible.
function SIMULADOR_CINEMATICO_OpeningFcn(hObject, eventdata, handles, varargin)
% Choose default command line output for SIMULADOR_CINEMATICO
handles.output = hObject;
%set(hObject, 'Units', 'normalized'); % Establecer Units en 'normalized'
set(hObject, 'Resize', 'on'); 
%%---------------------DECLARACIÓN DE VARIABLES GLOBALES-------------------
global variable;
variable = 0;
% Configuraciones iniciales:
set(handles.axes2, 'Visible', 'off');
set(handles.text7, 'Visible', 'off');
set(handles.text8, 'Visible', 'off');
set(handles.text9, 'Visible', 'off');
set(handles.text10, 'Visible', 'off');
set(handles.text11, 'Visible', 'off');
set(handles.text12, 'Visible', 'off');
set(handles.text13, 'Visible', 'off');
set(handles.text14, 'Visible', 'off');
set(handles.text15, 'Visible', 'off');

set(handles.edit3, 'Visible', 'off');
set(handles.edit4, 'Visible', 'off');
set(handles.edit5, 'Visible', 'off');
set(handles.edit6, 'Visible', 'off');
set(handles.edit7, 'Visible', 'off');
set(handles.edit8, 'Visible', 'off');
set(handles.edit9, 'Visible', 'off');
set(handles.edit10, 'Visible', 'off');
set(handles.edit11, 'Visible', 'off');

set(handles.uipanel2, 'Visible', 'off');%nuevo

set(handles.pushbutton1, 'Enable', 'off');%directo
set(handles.pushbutton2, 'Enable', 'off');%inverso
set(handles.Untitled_4, 'Enable', 'off');%guardar
set(handles.Untitled_8, 'Enable', 'off');%enviar a 
set(handles.Untitled_11, 'Enable', 'off');%boton ejemplos
set(handles.RESET, 'Enable', 'off');%directo

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = SIMULADOR_CINEMATICO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_9_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)%-----------COMENTARIOS------------
prompt = 'Comentario:';
dlgtitle = 'Entrada de texto';
dims = [1 50]; % Dimensiones del cuadro de entrada
% Muestra un cuadro de diálogo para la entrada de un solo texto
answer = inputdlg(prompt, dlgtitle, dims);
% La función inputdlg devuelve un cell array (celda) con la entrada del usuario
% El contenido de la entrada estará en answer{1} si el usuario ingresó algo y canceló, o vacío si canceló.
if ~isempty(answer) % Si el usuario ingresó algún texto
    userInput = answer{1}; % Obtener el texto ingresado
    if userInput == "" %no se ingresó nada
        msgbox('No se ingresó ningún texto, favor de ingresar');
    else % se ingresó algo
% Configurar los detalles del correo electrónico
mail = 'cinematicadirectaeinversa@gmail.com';  % Dirección de correo electrónico desde la que enviarás
password = 'canipiebwigwwmex';  % Contraseña de tu cuenta de correo electrónico
toAddress = 'cinematicadirectaeinversa@gmail.com';  % Dirección de correo del destinatario
subject = 'Comentario sobre la aplicación de Matlab';  % Asunto del correo electrónico
body = userInput;  % Cuerpo del correo electrónico
% Configurar la configuración del servidor SMTP de Gmail
setpref('Internet', 'E_mail', mail);
setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
setpref('Internet', 'SMTP_Username', mail);
setpref('Internet', 'SMTP_Password', password);
% Configurar las propiedades del correo electrónico
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth', 'true');
props.setProperty('mail.smtp.starttls.enable', 'true');
props.setProperty('mail.smtp.ssl.trust', 'smtp.gmail.com');
props.setProperty('mail.smtp.port', '587');
% Enviar el correo electrónico
sendmail(toAddress, subject, body);
% Eliminar el archivo temporal después de enviar el correo
msgbox('El correo ha sido enviado.', 'Enviar Correo');
    end
end


% --------------------------------------------------------------------
function Untitled_6_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_8_Callback(hObject, eventdata, handles)
prompt = 'Ingrese un correo electrónico:';
dlgtitle = 'Entrada de texto';
dims = [1 35]; % Dimensiones del cuadro de entrada
% Muestra un cuadro de diálogo para la entrada de un solo texto
answer = inputdlg(prompt, dlgtitle, dims);
% La función inputdlg devuelve un cell array (celda) con la entrada del usuario
% El contenido de la entrada estará en answer{1} si el usuario ingresó algo y canceló, o vacío si canceló.
if ~isempty(answer) % Si el usuario ingresó algún texto
    userInput = answer{1}; % Obtener el texto ingresado
    if userInput == "" %no se ingresó nada
        msgbox('No se ingresó ningún texto, favor de ingresar');
    else % se ingresó algo
        % Obtener el texto ingresado del cell array devuelto por inputdlg
email = userInput;
% Expresión regular para validar el formato de un correo electrónico
patron = '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
% Comprobar si el correo electrónico ingresado coincide con el patrón
if isempty(email) || ~ischar(email) || isempty(regexp(email, patron, 'once'))
    msgbox('El correo electrónico ingresado no es válido.');
else
   % Obtener el handle del axes que contiene la imagen que deseas enviar
axesHandle = handles.axes1;  % Reemplaza 'axes1' con el nombre real de tu axes
% Obtener la imagen del axes como una matriz
imageData = frame2im(getframe(axesHandle));
% Guardar la imagen en un archivo temporal (por ejemplo, en formato PNG)
tempFileName = 'temp_image.png';  % Nombre temporal para el archivo de imagen
imwrite(imageData, tempFileName);
% Configurar los detalles del correo electrónico
mail = 'cinematicadirectaeinversa@gmail.com';  % Dirección de correo electrónico desde la que enviarás
password = 'canipiebwigwwmex';  % Contraseña de tu cuenta de correo electrónico
toAddress = userInput;  % Dirección de correo del destinatario
subject = 'Imagen Adjunta desde MATLAB';  % Asunto del correo electrónico
body = 'Adjunto encontrarás la imagen generada desde MATLAB.';  % Cuerpo del correo electrónico
% Configurar la configuración del servidor SMTP de Gmail
setpref('Internet', 'E_mail', mail);
setpref('Internet', 'SMTP_Server', 'smtp.gmail.com');
setpref('Internet', 'SMTP_Username', mail);
setpref('Internet', 'SMTP_Password', password);
% Configurar las propiedades del correo electrónico
props = java.lang.System.getProperties;
props.setProperty('mail.smtp.auth', 'true');
props.setProperty('mail.smtp.starttls.enable', 'true');
props.setProperty('mail.smtp.ssl.trust', 'smtp.gmail.com');
props.setProperty('mail.smtp.port', '587');
% Adjuntar el archivo de imagen al correo electrónico
attachment = {tempFileName};
% Enviar el correo electrónico
sendmail(toAddress, subject, body, attachment);
% Eliminar el archivo temporal después de enviar el correo
delete(tempFileName);
% Mostrar mensaje de éxito
msgbox('El correo electrónico con la imagen adjunta ha sido enviado.', 'Enviar Correo');  
end
    end
end



% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% Obtener el handle del axes que contiene la imagen que deseas guardar
axesHandle = handles.axes1;  % Reemplaza 'axes1' con el nombre real de tu axes
% Obtener la imagen del axes como una matriz
imageData = frame2im(getframe(axesHandle));
% Solicitar al usuario que seleccione la ubicación y el nombre del archivo de salida
[fileName, pathName] = uiputfile({'*.png', 'PNG Files (*.png)'; ...
    '*.jpg', 'JPEG Files (*.jpg)'; '*.tif', 'TIFF Files (*.tif)'}, ...
    'Guardar Imagen Como');
% Verificar si el usuario canceló la operación de guardado
if isequal(fileName,0) || isequal(pathName,0)
    disp('Operación de guardado cancelada');
    return;
end
% Combinar el nombre del archivo y la ubicación para crear la ruta completa
fullPath = fullfile(pathName, fileName);
% Guardar la imagen en el formato seleccionado
imwrite(imageData, fullPath);
% Mostrar mensaje de éxito
msgbox(['La imagen se ha guardado correctamente en: ' fullPath], 'Guardar Imagen');

% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_11_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.axes2, 'Visible', 'off');
% Hint: get(hObject,'Value') returns toggle state of radiobutton1
if get(handles.radiobutton2, 'Value') == 1
    set(handles.radiobutton2, 'Value',0);
    set(handles.uipanel2, 'Visible', 'off');%nuevo
                set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
end
set(handles.Untitled_11, 'Enable', 'on');%boton ejemplos


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.axes2, 'Visible', 'off');
% Hint: get(hObject,'Value') returns toggle state of radiobutton2
if get(handles.radiobutton1, 'Value') == 1
    set(handles.radiobutton1, 'Value', 0);
    set(handles.Untitled_11, 'Enable', 'off');%boton ejemplos
                set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
end
set(handles.uipanel2, 'Visible', 'on');%nuevo
set(handles.text16, 'String', 'n = 0');
set(handles.edit1, 'String', ''); 
set(handles.edit2, 'String', ''); 
set(handles.edit3, 'String', ''); 
set(handles.edit4, 'String', ''); 
set(handles.edit5, 'String', ''); 
set(handles.edit6, 'String', ''); 
set(handles.edit7, 'String', ''); 
set(handles.edit8, 'String', ''); 
set(handles.edit9, 'String', ''); 
set(handles.edit10, 'String', ''); 
set(handles.edit11, 'String', ''); 


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global variable;
x = variable;
if x == 0 
% Obtener los ángulos de las articulaciones desde la interfaz
Th_1 = str2double(handles.edit3.String) * pi / 180;  % Conversión de grados a radianes
d2 = str2double(handles.edit4.String);
d3 = str2double(handles.edit5.String);
Th_4 = str2double(handles.edit6.String) * pi / 180;
Th_5 = str2double(handles.edit7.String) * pi / 180;
Th_6 = str2double(handles.edit8.String) * pi / 180;
if d2<0 || d2>80
    %msgbox('El valor de d2 debe estar entre 0 y 60');
    set(handles.edit4,'String','20');
    d2 = 20;
end
if d3<0 || d3>80
    %msgbox('El valor de d3 debe estar entre 0 y 60');
    set(handles.edit5,'String','20');
    d3 = 20;
end
% Longitudes de los eslabones
L_1 = 50;
L_4 = 40;  % Longitud del cuarto eslabón
L_5 = 0;  % Longitud del quinto eslabón
L_6 = 20;  % Longitud del sexto eslabón

% Definición de las articulaciones (eslabones)
L(1) = Link([Th_1 L_1 0 0]);   % theta d a alpha
L(2) = Link([pi/2 d2 0 pi/2]);       % Segundo eslabón
L(3) = Link([0 d3 0 0]);       % Tercer eslabón
L(4) = Link([Th_4 L_4 0 pi/2]);       % Cuarto eslabón
L(5) = Link([Th_5 L_5 0 -pi/2]);       % Quinto eslabón
L(6) = Link([Th_6 L_6 0 0]);       % Sexto eslabón

% Crear el robot con las articulaciones definidas
Robot = SerialLink(L);
Robot.name = 'R6GDL_Robot';  % Nombre del robot con 6 articulaciones

% Graficar la configuración del robot
Robot.plot([Th_1 0 0 Th_4 Th_5 Th_6]);

% Calcular la cinemática directa para la configuración dada
T = Robot.fkine([Th_1 0 0 Th_4 Th_5 Th_6]);

% Mostrar las posiciones calculadas en la interfaz
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
end

if x == 1  %EJEMPLO 2 NATALIA
Th_1 = str2double(handles.edit3.String)*pi/180;
Th_2 = str2double(handles.edit4.String)*pi/180;
Th_3 = str2double(handles.edit5.String)*pi/180;
d1 = str2double(handles.edit6.String);

if d1<0 || d1>80
    %msgbox('El valor de d2 debe estar entre 0 y 60');
    set(handles.edit6,'String','20');
    d1 = 20;
end

L_1 = 40;
L_2 = 40;
L_4 = 80;


L(1) = Link([Th_1 0 L_1 0]);
L(2) = Link([Th_2 0 L_2 0]);
L(3) = Link([0 -d1 0 0]);
L(4) = Link([Th_3 L_4  0 -pi]);

Robot = SerialLink(L);
Robot.name = 'R4GDL_Robot';
Robot.plot([Th_1 Th_2 0 Th_3]);

T = Robot.fkine([Th_1 Th_2 0 Th_3]);
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
end

if x == 2  %EJEMPLO 3 CONRADO
Th_1 = str2double(handles.edit3.String)*pi/180;
Th_2 = str2double(handles.edit4.String)*pi/180;
Th_3 = str2double(handles.edit5.String)*pi/180;

D1 = 50;
D2 = 50;
D3 = 50;

L(1) = Link([Th_1 D1 0 pi/2]);
L(2) = Link([Th_2 0 D2 0]);
L(3) = Link([Th_3 0 D3 0]);

Robot = SerialLink(L);
Robot.name = 'RRR_Robot';
Robot.plot([Th_1 Th_2 Th_3]);

T = Robot.fkine([Th_1 Th_2 Th_3]);
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
end

if x == 3  %EJEMPLO 4 DIEGO
Th_1 = str2double(handles.edit3.String)*pi/180;
D2 = str2double(handles.edit4.String);
Th_3 = str2double(handles.edit5.String)*pi/180;
if D2 <0 || D2 > 60
    set(handles.edit4,'String','60');
    D2 = 60;
end
L(1) = Link([0 20 0 pi/2]);
L(2) = Link([Th_1 0 20 0]);
L(3) = Link([0 0 D2 0]);
L(4) = Link([Th_3 0 20 0]);

Robot = SerialLink(L);
Robot.name = 'R3GDL_Robot';
Robot.plot([1 Th_1 0 Th_3]);

T = Robot.fkine([1 Th_1 0 Th_3]);
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
end



% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
global variable;
x = variable;
if x == 0  %EJEMPLO 1 JORGE
   % Obtener la posición deseada desde la interfaz
PX = str2double(handles.edit9.String);
PY = str2double(handles.edit10.String);
PZ = str2double(handles.edit11.String);
% Longitudes de los eslabones
L_1 = 50;
L_4 = 40;
L_5 = 0;
L_6 = 20;
d2 = 0;
d3 = 0;
% Definición de las articulaciones (eslabones)
L(1) = Link([0 L_1 0 0]);     % Eslabón 1
L(2) = Link([pi/2 d2 0 pi/2]); % Eslabón 2 (d2 fue calculado como 0 en cinemática directa)
L(3) = Link([0 d3 0 0]);       % Eslabón 3 (d3 fue calculado como 0 en cinemática directa)
L(4) = Link([0 L_4 0 pi/2]);  % Eslabón 4
L(5) = Link([0 L_5 0 -pi/2]); % Eslabón 5
L(6) = Link([0 L_6 0 0]);     % Eslabón 6
% Crear el robot con las articulaciones definidas
Robot = SerialLink(L);
Robot.name = 'R6GDL_Robot';  % Nombre del robot con 6 articulaciones
% Definir la matriz de transformación homogénea T para la posición deseada
T_desired = [1 0 0 PX;
             0 1 0 PY;
             0 0 1 PZ;
             0 0 0 1];
% Resolver la cinemática inversa para obtener los ángulos de articulación
% Utilizamos [0 0 0 0 0 0] como suposición inicial para los ángulos
% Los límites de los ángulos son [1 1 1 1 1 1] (indicando que todos los ángulos pueden variar libremente)
J = Robot.ikine(T_desired, [0 0 0 0 0 0], [1 1 1 1 1 1]) * 180/pi;
% Mostrar los ángulos de articulación calculados en la interfaz
handles.edit3.String = num2str(floor(J(1)));  % Theta_1
handles.edit4.String = num2str(floor(0));                        % d2 (fijo en 0)
handles.edit5.String = num2str(floor(0));                        % d3 (fijo en 0)
handles.edit6.String = num2str(floor(J(4)));  % Theta_4
handles.edit7.String = num2str(floor(J(5)));  % Theta_5
handles.edit8.String = num2str(floor(J(6)));  % Theta_6
% Visualizar la configuración del robot en una gráfica
Robot.plot(J*pi/180); 
end

if x == 1  %EJEMPLO 2 NATALIA
PX = str2double(handles.edit9.String);
PY = str2double(handles.edit10.String);
PZ = str2double(handles.edit11.String);


L_1 = 40;
L_2 = 40;
L_4 = 80;
d1=0;

L(1) = Link([0 0 L_1 0]);
L(2) = Link([0 0 L_2 0]);
L(3) = Link([0 d1 0 0]);
L(4) = Link([0 L_4 0 -pi]);

Robot = SerialLink(L);
Robot.name = 'R4GDL_Robot';

T = [ 1 0 0 PX;
      0 1 0 PY;
      0 0 1 PZ;
      0 0 0 1];
 
 %T = Robot.fkine([Th_1 Th_2 0 0]);
J = Robot.ikine(T, [0 0 0 0],[1 1 1 0 0 1])* 180/pi;

handles.edit3.String = num2str(floor(J(1)));
handles.edit4.String = num2str(floor(J(2)));
handles.edit5.String = num2str(floor(J(3)));
handles.edit6.String = num2str(floor(0));

Robot.plot(J*pi/180);
end

if x == 2  %EJEMPLO 3 CONRADO
PX = str2double(handles.edit9.String);
PY = str2double(handles.edit10.String);
PZ = str2double(handles.edit11.String);

D1 = 50;
D2 = 50;
D3 = 50;

L(1) = Link([0 D1 0 pi/2]);
L(2) = Link([0 0 D2 0]);
L(3) = Link([0 0 D3 0]);

Robot = SerialLink(L);
Robot.name = 'RRR_Robot';

T = [ 1 0 0 PX;
      0 1 0 PY;
      0 0 1 PZ;
      0 0 0 1];
  
J = Robot.ikine(T, [0 0 0], [1 1 1 0 0 0]) * 180/pi;
handles.edit3.String = num2str(floor(J(1)));
handles.edit4.String = num2str(floor(J(2)));
handles.edit5.String = num2str(floor(J(3)));

Robot.plot(J*pi/180);
end

if x == 3  %EJEMPLO 4 DIEGO
    PX = str2double(handles.edit9.String);
PY = str2double(handles.edit10.String);
PZ = str2double(handles.edit11.String);


L(1) = Link([0 20 0 pi/2]);
L(2) = Link([0 0 20 0]);
L(3) = Link([0 0 40 0]);
L(4) = Link([0 0 20 0]);

Robot = SerialLink(L);
Robot.name = 'R3GDL_Robot';

T = [ 1 0 0 PX;
      0 1 0 PY;
      0 0 1 PZ;
      0 0 0 1];
  
J = Robot.ikine(T, [0 0 0 0], [0 1 1 1 0 0]) * 180/pi;
handles.edit3.String = num2str(floor(J(1)));
handles.edit4.String = num2str(40);
handles.edit5.String = num2str(floor(J(3)));

Robot.plot(J*pi/180);
end


function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Ejemplo_1_Callback(hObject, eventdata, handles)
set(handles.Untitled_4, 'Enable', 'on');%guardar
set(handles.Untitled_8, 'Enable', 'on');%enviar a 
            set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
            
            set(handles.text7, 'Visible', 'on');
            set(handles.text8, 'Visible', 'on');
            set(handles.text9, 'Visible', 'on');
            set(handles.text10, 'Visible', 'on');
            set(handles.text11, 'Visible', 'on');
            set(handles.text12, 'Visible', 'on');
            set(handles.text13, 'Visible', 'on');
            set(handles.text14, 'Visible', 'on');
            set(handles.text15, 'Visible', 'on');    
            set(handles.edit3, 'Visible', 'on');
            set(handles.edit4, 'Visible', 'on');
            set(handles.edit5, 'Visible', 'on');
            set(handles.edit6, 'Visible', 'on');
            set(handles.edit7, 'Visible', 'on');
            set(handles.edit8, 'Visible', 'on');
            set(handles.edit9, 'Visible', 'on');
            set(handles.edit10, 'Visible', 'on');
            set(handles.edit11, 'Visible', 'on');
set(handles.text16, 'String', 'n = 6'); 
set(handles.pushbutton1, 'Enable', 'on');%directo
set(handles.pushbutton2, 'Enable', 'on');%inverso
set(handles.RESET, 'Enable', 'on');%directo
set(handles.text8,'String','D2');
set(handles.text9,'String','D3');
set(handles.text10,'String','Theta_4:');
% Longitudes de los eslabones
L_1 = 50;
L_4 = 40;  % Longitud del cuarto eslabón
L_5 = 0;  % Longitud del quinto eslabón
L_6 = 20;  % Longitud del sexto eslabón

% Definición de las articulaciones (eslabones)
L(1) = Link([0 L_1 0 0]);   % theta d a alpha
L(2) = Link([pi/2 80 0 pi/2]);       % Segundo eslabón
L(3) = Link([0 80 0 0]);       % Tercer eslabón
L(4) = Link([0 L_4 0 pi/2]);       % Cuarto eslabón
L(5) = Link([0 L_5 0 -pi/2]);       % Quinto eslabón
L(6) = Link([0 L_6 0 0]);       % Sexto eslabón

% Crear el robot con las articulaciones definidas
Robot = SerialLink(L);
Robot.name = 'R6GDL_Robot';  % Nombre del robot con 6 articulaciones

% Graficar la configuración del robot
Robot.plot([0 0 0 0 0 0]);

% Calcular la cinemática directa para la configuración dada
T = Robot.fkine([0 0 0 0 0 0]);

% Mostrar las posiciones calculadas en la interfaz
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
global variable;
variable = 0;
set(handles.axes2, 'Visible', 'on');
nombre_imagen = 'bola.jpg';
imagen = imread(nombre_imagen);
axes(handles.axes2);
imshow(imagen);


% --------------------------------------------------------------------
function Ejemplo_2_Callback(hObject, eventdata, handles)
global variable;
variable = 1;
set(handles.Untitled_4, 'Enable', 'on');%guardar
set(handles.Untitled_8, 'Enable', 'on');%enviar a 
            set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
            
            set(handles.text7, 'Visible', 'on');
            set(handles.text8, 'Visible', 'on');
            set(handles.text9, 'Visible', 'on');
            set(handles.text10, 'Visible', 'on');
            set(handles.edit3, 'Visible', 'on');
            set(handles.edit4, 'Visible', 'on');
            set(handles.edit5, 'Visible', 'on');
            set(handles.edit6, 'Visible', 'on');
            set(handles.edit9, 'Visible', 'on');
            set(handles.edit10, 'Visible', 'on');
            set(handles.edit11, 'Visible', 'on');
            
set(handles.text16, 'String', 'n = 4'); 
set(handles.pushbutton1, 'Enable', 'on');%directo
set(handles.pushbutton2, 'Enable', 'on');%inverso
set(handles.RESET, 'Enable', 'on');%directo
set(handles.text8,'String','Theta_2:');
set(handles.text10,'String','D1:');
L_1 = 40;
L_2 = 40;
L_4 = 80;
L(1) = Link([0 0 L_1 0]);
L(2) = Link([0 0 L_2 0]);
L(3) = Link([0 -60 0 0]);
L(4) = Link([0 L_4  0 -pi]);

Robot = SerialLink(L);
Robot.name = 'R4GDL_Robot';
Robot.plot([0 0 0 0]);

T = Robot.fkine([0 0 0 0]);
handles.edit9.String = num2str(floor(T(1,4)));
handles.edit10.String = num2str(floor(T(2,4)));
handles.edit11.String = num2str(floor(T(3,4)));
set(handles.axes2, 'Visible', 'on');
nombre_imagen = 'bola2.jpg';
imagen = imread(nombre_imagen);
axes(handles.axes2);
imshow(imagen);



% --------------------------------------------------------------------
function Ejemplo_3_Callback(hObject, eventdata, handles)
global variable;
variable = 2;
set(handles.Untitled_4, 'Enable', 'on');%guardar
set(handles.Untitled_8, 'Enable', 'on');%enviar a 
            set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
            
            set(handles.text7, 'Visible', 'on');
            set(handles.text8, 'Visible', 'on');
            set(handles.text9, 'Visible', 'on'); 
            set(handles.edit3, 'Visible', 'on');
            set(handles.edit4, 'Visible', 'on');
            set(handles.edit5, 'Visible', 'on');
            set(handles.edit9, 'Visible', 'on');
            set(handles.edit10, 'Visible', 'on');
            set(handles.edit11, 'Visible', 'on');
            
set(handles.text16, 'String', 'n = 3'); 
set(handles.pushbutton1, 'Enable', 'on');%directo
set(handles.pushbutton2, 'Enable', 'on');%inverso
set(handles.RESET, 'Enable', 'on');%directo
set(handles.text8,'String','Theta_2:');
set(handles.text9,'String','Theta_3:');
set(handles.text10,'String','Theta_4:');

D1 = 50;
D2 = 50;
D3 = 50;

L(1) = Link([0 D1 0 pi/2]);
L(2) = Link([0 0 D2 0]);
L(3) = Link([0 0 D3 0]);

Robot = SerialLink(L);
Robot.name = 'RRR_Robot';
Robot.plot([0 0 0]);

T = Robot.fkine([0 0 0]);
handles.Pos_X.String = num2str(floor(T(1,4)));
handles.Pos_Y.String = num2str(floor(T(2,4)));
handles.Pos_Z.String = num2str(floor(T(3,4)));
set(handles.axes2, 'Visible', 'on');
nombre_imagen = 'bola3.png';
imagen = imread(nombre_imagen);
axes(handles.axes2);
imshow(imagen);


% --------------------------------------------------------------------
function Ejemplo_4_Callback(hObject, eventdata, handles)
global variable;
variable = 3;
set(handles.Untitled_4, 'Enable', 'on');%guardar
set(handles.Untitled_8, 'Enable', 'on');%enviar a 
            set(handles.text7, 'Visible', 'off');
            set(handles.text8, 'Visible', 'off');
            set(handles.text9, 'Visible', 'off');
            set(handles.text10, 'Visible', 'off');
            set(handles.text11, 'Visible', 'off');
            set(handles.text12, 'Visible', 'off');
            set(handles.text13, 'Visible', 'off');
            set(handles.text14, 'Visible', 'off');
            set(handles.text15, 'Visible', 'off');         
            set(handles.edit3, 'Visible', 'off');
            set(handles.edit4, 'Visible', 'off');
            set(handles.edit5, 'Visible', 'off');
            set(handles.edit6, 'Visible', 'off');
            set(handles.edit7, 'Visible', 'off');
            set(handles.edit8, 'Visible', 'off');
            set(handles.edit9, 'Visible', 'off');
            set(handles.edit10, 'Visible', 'off');
            set(handles.edit11, 'Visible', 'off');
            
            set(handles.text7, 'Visible', 'on');
            set(handles.text8, 'Visible', 'on');
            set(handles.text9, 'Visible', 'on'); 
            set(handles.edit3, 'Visible', 'on');
            set(handles.edit4, 'Visible', 'on');
            set(handles.edit5, 'Visible', 'on');
            set(handles.edit9, 'Visible', 'on');
            set(handles.edit10, 'Visible', 'on');
            set(handles.edit11, 'Visible', 'on');
            
set(handles.text16, 'String', 'n = 3'); 
set(handles.pushbutton1, 'Enable', 'on');%directo
set(handles.pushbutton2, 'Enable', 'on');%inverso
set(handles.RESET, 'Enable', 'on');%directo
set(handles.text8,'String','Theta_2:');
set(handles.text9,'String','Theta_3:');


L(1) = Link([0 20 0 pi/2]);
L(2) = Link([0 0 20 0]);
L(3) = Link([0 0 60 0]);
L(4) = Link([0 0 20 0]);

Robot = SerialLink(L);
Robot.name = 'R3GDL_Robot';
Robot.plot([1 0 0 0]);

T = Robot.fkine([1 0 0 0]);
handles.Pos_X.String = num2str(floor(T(1,4)));
handles.Pos_Y.String = num2str(floor(T(2,4)));
handles.Pos_Z.String = num2str(floor(T(3,4)));


set(handles.axes2, 'Visible', 'on');
nombre_imagen = 'bola4.jpg';
imagen = imread(nombre_imagen);
axes(handles.axes2);
imshow(imagen);



% --- Executes on button press in RESET.
function RESET_Callback(hObject, eventdata, handles)
set(handles.edit3, 'String', '0');
set(handles.edit4, 'String', '0');
set(handles.edit5, 'String', '0');
set(handles.edit6, 'String', '0');
set(handles.edit7, 'String', '0');
set(handles.edit8, 'String', '0');
set(handles.edit9, 'String', '0');
set(handles.edit10, 'String', '0');
set(handles.edit11, 'String', '0');
