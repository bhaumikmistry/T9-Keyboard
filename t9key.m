function varargout = t9key(varargin)
% T9KEY MATLAB code for t9key.fig
%      T9KEY, by itself, creates a new T9KEY or raises the existing
%      singleton*.
%
%      H = T9KEY returns the handle to a new T9KEY or the handle to
%      the existing singleton*.
%
%      T9KEY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in T9KEY.M with the given input arguments.
%
%      T9KEY('Property','Value',...) creates a new T9KEY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before t9key_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to t9key_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help t9key

% Last Modified by GUIDE v2.5 10-Jul-2016 23:01:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @t9key_OpeningFcn, ...
                   'gui_OutputFcn',  @t9key_OutputFcn, ...
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


% --- Executes just before t9key is made visible.
function t9key_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to t9key (see VARARGIN)

% Choose default command line output for t9key
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
global times_pushed
global last_pushed
global cap
cap = 0;
times_pushed = 0;
last_pushed = [];

% UIWAIT makes t9key wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = t9key_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'g');
    else 
        newstr = strcat(string,'G');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('g');
elseif times_pushed == 2 && strcmp(last_pushed,'g') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'h');
    else 
        newstr = strcat(string,'H');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('h');
elseif times_pushed == 3 && strcmp(last_pushed,'h') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'i');
    else 
        newstr = strcat(string,'I');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else
    times_pushed = 0;
end   





% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'j');
    else 
        newstr = strcat(string,'J');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('j');
elseif times_pushed == 2 && strcmp(last_pushed,'j') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'k');
    else 
        newstr = strcat(string,'K');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('k');
elseif times_pushed == 3 && strcmp(last_pushed,'k') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'l');
    else 
        newstr = strcat(string,'L');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else
    times_pushed = 0;
end    


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'m');
    else 
        newstr = strcat(string,'M');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('m');
elseif times_pushed == 2 && strcmp(last_pushed,'m') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'n');
    else 
        newstr = strcat(string,'N');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('n');
elseif times_pushed == 3 && strcmp(last_pushed,'n') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'o');
    else 
        newstr = strcat(string,'O');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else
    times_pushed = 0;
end   

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'p');
    else 
        newstr = strcat(string,'P');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('p');
elseif times_pushed == 2 && strcmp(last_pushed,'p') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'q');
    else 
        newstr = strcat(string,'Q');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('q');
elseif times_pushed == 3 && strcmp(last_pushed,'q') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'r');
    else 
        newstr = strcat(string,'R');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('r');

elseif times_pushed == 4 && strcmp(last_pushed,'r') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'s');
    else 
        newstr = strcat(string,'S');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else 
    times_pushed = 0;
end   

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'t');
    else 
        newstr = strcat(string,'T');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('t');
elseif times_pushed == 2 && strcmp(last_pushed,'t') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'u');
    else 
        newstr = strcat(string,'U');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('u');
elseif times_pushed == 3 && strcmp(last_pushed,'u') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'v');
    else 
        newstr = strcat(string,'V');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else
    times_pushed = 0;
end   


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
string = horzcat(string,'_' );
set(handles.text2,'String',string)

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cap
if cap == 0
    cap =1
else 
    cap = 0
end

% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global times_pushed
times_pushed = 0;


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
string = string(1:end-1);
set(handles.text2,'String',string)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'.');
    else 
        newstr = strcat(string,'.');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('.');
elseif times_pushed == 2 && strcmp(last_pushed,'.') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,',');
    else 
        newstr = strcat(string,',');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
else
    times_pushed = 0;
end   


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'a');
    else 
        newstr = strcat(string,'A');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('a');
elseif times_pushed == 2 && strcmp(last_pushed,'a') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'b');
    else 
        newstr = strcat(string,'B');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('b');
elseif times_pushed == 3 && strcmp(last_pushed,'b') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'c');
    else 
        newstr = strcat(string,'C');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    times_pushed = 0;
else
    times_pushed = 0;
end   


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
string = get(handles.text2,'String');
if strcmp(string, 'Enter Text')
    string = []
end
global times_pushed
global last_pushed
global cap
times_pushed = times_pushed + 1;

if times_pushed == 1
    if cap == 0
        newstr = strcat(string,'e');
    else 
        newstr = strcat(string,'E');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('e');
elseif times_pushed == 2 && strcmp(last_pushed,'e') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'f');
    else 
        newstr = strcat(string,'F');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('f');
elseif times_pushed == 3 && strcmp(last_pushed,'f') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'g');
    else 
        newstr = strcat(string,'G');
    end
    set(handles.text2,'String',newstr)
    last_pushed = ('f');
    disp(newstr)
elseif times_pushed == 4 && strcmp(last_pushed,'g') == 1;
    string = string(1:end-1);
    if cap == 0
        newstr = strcat(string,'f');
    else 
        newstr = strcat(string,'F');
    end
    set(handles.text2,'String',newstr)
    disp(newstr)
    last_pushed = ('f');
    times_pushed = 0;
else
    times_pushed = 0;
end   
