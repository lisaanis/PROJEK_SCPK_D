function varargout = Manual(varargin)
% MANUAL MATLAB code for Manual.fig
%      MANUAL, by itself, creates a new MANUAL or raises the existing
%      singleton*.
%
%      H = MANUAL returns the handle to a new MANUAL or the handle to
%      the existing singleton*.
%
%      MANUAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MANUAL.M with the given input arguments.
%
%      MANUAL('Property','Value',...) creates a new MANUAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Manual_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Manual_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Manual

% Last Modified by GUIDE v2.5 20-Jun-2021 15:13:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Manual_OpeningFcn, ...
                   'gui_OutputFcn',  @Manual_OutputFcn, ...
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


% --- Executes just before Manual is made visible.
function Manual_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Manual (see VARARGIN)
global p
p.MyData = []; %menyimpan data untuk ditampilkan ke uitable1 (produk)
p.MyRekomendasi = []; %menyimpan data untuk ditampilkan ke uitable2 (hasil)
p.MyResult = []; %menyimpan nilai untuk dilakukan perhitungan

% Choose default command line output for Manual
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Manual wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Manual_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function produk_Callback(hObject, eventdata, handles)
% hObject    handle to produk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of produk as text
%        str2double(get(hObject,'String')) returns contents of produk as a double

% --- Executes during object creation, after setting all properties.
function produk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to produk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in spf.
function spf_Callback(hObject, eventdata, handles)
% hObject    handle to spf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns spf contents as cell array
%        contents{get(hObject,'Value')} returns selected item from spf


% --- Executes during object creation, after setting all properties.
function spf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to spf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c2.
function c2_Callback(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c2


% --- Executes during object creation, after setting all properties.
function c2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c3.
function c3_Callback(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c3


% --- Executes during object creation, after setting all properties.
function c3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c4.
function c4_Callback(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c4


% --- Executes during object creation, after setting all properties.
function c4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c5.
function c5_Callback(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c5


% --- Executes during object creation, after setting all properties.
function c5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c6.
function c6_Callback(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c6


% --- Executes during object creation, after setting all properties.
function c6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in c1.
function c1_Callback(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns c1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from c1


% --- Executes during object creation, after setting all properties.
function c1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to c1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in a1.
function a1_Callback(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a1


% --- Executes during object creation, after setting all properties.
function a1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b1_Callback(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b1 as text
%        str2double(get(hObject,'String')) returns contents of b1 as a double


% --- Executes during object creation, after setting all properties.
function b1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b2_Callback(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b2 as text
%        str2double(get(hObject,'String')) returns contents of b2 as a double


% --- Executes during object creation, after setting all properties.
function b2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b3_Callback(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b3 as text
%        str2double(get(hObject,'String')) returns contents of b3 as a double


% --- Executes during object creation, after setting all properties.
function b3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b4_Callback(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b4 as text
%        str2double(get(hObject,'String')) returns contents of b4 as a double


% --- Executes during object creation, after setting all properties.
function b4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b5_Callback(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b5 as text
%        str2double(get(hObject,'String')) returns contents of b5 as a double


% --- Executes during object creation, after setting all properties.
function b5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b6_Callback(hObject, eventdata, handles)
% hObject    handle to b6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b6 as text
%        str2double(get(hObject,'String')) returns contents of b6 as a double


% --- Executes during object creation, after setting all properties.
function b6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tambah.
function tambah_Callback(hObject, eventdata, handles)
% hObject    handle to tambah (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%mengambil value dari pop up menu
kriteria = get(handles.c1,'Value');
if kriteria == 2
    k1 = 1;
    spf = '10';
elseif kriteria == 3
    k1 = 2;
    spf = '15';
elseif kriteria == 4
    k1 = 3;
    spf = '25';
elseif kriteria == 5
    k1 = 4;
    spf = '30';
elseif kriteria == 6
    k1 = 5;
    spf = '50';
end

kriteria = get(handles.c2,'Value');
if kriteria == 2
    k2 = 1;
    kulit = 'sensitif';
elseif kriteria == 3
    k2 = 2;
    kulit = 'kombinasi';
elseif kriteria == 4
    k2 = 3;
    kulit = 'kering';
elseif kriteria == 5
    k2 = 4;
    kulit = 'berminyak';
elseif kriteria == 6
    k2 = 5;
    kulit = 'normal';
end

kriteria = str2double(get(handles.c3,'String'));
if kriteria <= 25000
    k3 = 1;
elseif kriteria > 25000 && kriteria <= 35000
    k3 = 2;
elseif kriteria > 35000 && kriteria <= 85000
    k3 = 3;
elseif kriteria > 85000 && kriteria <= 120000
    k3 = 4;
elseif kriteria > 120000
    k3 = 5;
end

kriteria = get(handles.c4,'Value');
if kriteria == 2
    k4 = 1;
    kualitas = 'sangat buruk';
elseif kriteria == 3
    k4 = 2;
    kualitas = 'buruk';
elseif kriteria == 4
    k4 = 3;
    kualitas = 'cukup bagus';
elseif kriteria == 5
    k4 = 4;
    kualitas = 'bagus';
elseif kriteria == 6
    k4 = 5;
    kualitas = 'sangat bagus';
end

kriteria = get(handles.c5,'Value');
if kriteria == 2
    k5 = 1;
    efek = 'sangat rendah';
elseif kriteria == 3
    k5 = 2;
    efek = 'rendah';
elseif kriteria == 4
    k5 = 3;
    efek = 'cukup tinggi';
elseif kriteria == 5
    k5 = 4;
    efek = 'tinggi';
elseif kriteria == 6
    k5 = 5;
    efek = 'sangat tinggi';
end

kriteria = get(handles.c6,'Value');
if kriteria == 2
    k6 = 1;
    bentuk = 'spray';
elseif kriteria == 3
    k6 = 2;
    bentuk = 'watery';
elseif kriteria == 4
    k6 = 3;
    bentuk = 'lotion';
elseif kriteria == 5
    k6 = 4;
    bentuk = 'cream';
elseif kriteria == 6
    k6 = 5;
    bentuk = 'gel';
end

global p
Produk1 = get(handles.produk, 'string');
SPF1 = spf;
Kulit1 =  kulit;
Harga1 =  get(handles.c3, 'string');
Kualitas1 = kualitas;
Efek1 = efek;
Bentuk1 = bentuk;
p.MyData = [p.MyData; [{Produk1} {SPF1} {Kulit1} {Harga1} {Kualitas1} {Efek1} {Bentuk1}]];
set(handles.uitable1, 'Data', p.MyData)

SPF = k1;
Kulit =  k2;
Harga =  k3;
Kualitas = k4;
Efek = k5;
Bentuk = k6;
p.MyResult = [p.MyResult; [SPF Kulit Harga Kualitas Efek Bentuk]];

% --- Executes on selection change in a2.
function a2_Callback(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a2


% --- Executes during object creation, after setting all properties.
function a2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in a3.
function a3_Callback(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a3


% --- Executes during object creation, after setting all properties.
function a3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in a4.
function a4_Callback(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a4


% --- Executes during object creation, after setting all properties.
function a4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in a5.
function a5_Callback(hObject, eventdata, handles)
% hObject    handle to a5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a5


% --- Executes during object creation, after setting all properties.
function a5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in a6.
function a6_Callback(hObject, eventdata, handles)
% hObject    handle to a6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns a6 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from a6


% --- Executes during object creation, after setting all properties.
function a6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitung.
function hitung_Callback(hObject, eventdata, handles)
% hObject    handle to hitung (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global p
x = p.MyResult %mengambil data yang sudah diubah dalam bentuk angka untuk proses perhitungan

bobotSPF = str2double(get(handles.b1,'string'));
bobotKulit = str2double(get(handles.b2,'string'));
bobotHarga = str2double(get(handles.b3,'string'));
bobotKualitas = str2double(get(handles.b4,'string'));
bobotEfek = str2double(get(handles.b5,'string'));
bobotBentuk = str2double(get(handles.b6,'string'));

atribut = get(handles.a1,'Value');
if atribut == 2
    at1 = 0;
elseif atribut == 3
    at1 = 1;
end

atribut = get(handles.a2,'Value');
if atribut == 2
    at2 = 0;
elseif atribut == 3
    at2 = 1;
end

atribut = get(handles.a3,'Value');
if atribut == 2
    at3 = 0;
elseif atribut == 3
    at3 = 1;
end

atribut = get(handles.a4,'Value');
if atribut == 2
    at4 = 0;
elseif atribut == 3
    at4 = 1;
end

atribut = get(handles.a5,'Value');
if atribut == 2
    at5 = 0;
elseif atribut == 3
    at5 = 1;
end

atribut = get(handles.a6,'Value');
if atribut == 2
    at6 = 0;
elseif atribut == 3
    at6 = 1;
end

k = [at1,at2,at3,at4,at5,at6];
w = [bobotSPF,bobotKulit,bobotHarga,bobotKualitas,bobotEfek,bobotBentuk];

%tahapan 1. normalisasi matriks
[m n] = size(x); %matriks m x n dengan ukuran sebanyak variabel x
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n,
    if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
        R(:,j)=x(:,j)./max(x(:,j));
    else
        R(:,j)=min(x(:,j))./x(:,j);
    end;
end;

Normalisasi = R

ambil = p.MyData; %mengambil data produk yang sudah diinput
prdk = string(ambil(:,1)); %mengambil data pada kolom produk dan mengubahnya ke dalam bentuk string

p.MyRekomendasi = []; %menghapus data rekomendasi lama

%tahapan kedua, proses perangkingan
for i=1:m,
    V(i)= sum(w.*R(i,:));
    
    produkHasil = char(prdk(i)); %mengubah string menjadi char agar bisa dimasukkan ke dalam tabel
    
    p.MyRekomendasi = [p.MyRekomendasi; [{produkHasil} {V(i)}]];
    set(handles.uitable2, 'Data', p.MyRekomendasi);
end;

[hasil, no]=max(V);
set(handles.rekomendasi,'string',(prdk(no)));


function rekomendasi_Callback(hObject, eventdata, handles)
% hObject    handle to rekomendasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rekomendasi as text
%        str2double(get(hObject,'String')) returns contents of rekomendasi as a double


% --- Executes during object creation, after setting all properties.
function rekomendasi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rekomendasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text2.
function text2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when selected cell(s) is changed in uitable3.
function uitable3_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when entered data in editable cell(s) in uitable3.
function uitable3_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
