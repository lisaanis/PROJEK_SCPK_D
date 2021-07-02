function varargout = MenuUtama(varargin)
% MENUUTAMA MATLAB code for MenuUtama.fig
%      MENUUTAMA, by itself, creates a new MENUUTAMA or raises the existing
%      singleton*.
%
%      H = MENUUTAMA returns the handle to a new MENUUTAMA or the handle to
%      the existing singleton*.
%
%      MENUUTAMA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MENUUTAMA.M with the given input arguments.
%
%      MENUUTAMA('Property','Value',...) creates a new MENUUTAMA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MenuUtama_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MenuUtama_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MenuUtama

% Last Modified by GUIDE v2.5 20-Jun-2021 18:16:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MenuUtama_OpeningFcn, ...
                   'gui_OutputFcn',  @MenuUtama_OutputFcn, ...
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


% --- Executes just before MenuUtama is made visible.
function MenuUtama_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MenuUtama (see VARARGIN)


% Choose default command line output for MenuUtama
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%buat axes
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
%import background
bg = imread('gambar\bg.jpg'); imagesc(bg);
%matikan axes dan tampilkan background
set(ah, 'handlevisibility', 'off', 'visible', 'off')

% UIWAIT makes MenuUtama wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MenuUtama_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
close;
guidata(Manual);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function axes14_CreateFcn(hObject, eventdata, handles)
imshow('gambar\g4.jpg');

% --- Executes during object creation, after setting all properties.
function axes15_CreateFcn(hObject, eventdata, handles)
imshow('gambar\g5.jpg');

% --- Executes during object creation, after setting all properties.
function axes16_CreateFcn(hObject, eventdata, handles)
imshow('gambar\g1.jpg');

% --- Executes during object creation, after setting all properties.
function axes19_CreateFcn(hObject, eventdata, handles)
imshow('gambar\g3.jpg');

% --- Executes during object creation, after setting all properties.
function axes21_CreateFcn(hObject, eventdata, handles)
imshow('gambar\g2.png');
