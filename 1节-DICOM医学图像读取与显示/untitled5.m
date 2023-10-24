function varargout = untitled5(varargin)
% UNTITLED5 MATLAB code for untitled5.fig
%      UNTITLED5, by itself, creates a new UNTITLED5 or raises the existing
%      singleton*.
%
%      H = UNTITLED5 returns the handle to a new UNTITLED5 or the handle to
%      the existing singleton*.
%
%      UNTITLED5('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED5.M with the given input arguments.
%
%      UNTITLED5('Property','Value',...) creates a new UNTITLED5 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled5_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled5_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled5

% Last Modified by GUIDE v2.5 11-Oct-2023 11:14:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled5_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled5_OutputFcn, ...
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


% --- Executes just before untitled5 is made visible.
function untitled5_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled5 (see VARARGIN)

% Choose default command line output for untitled5
handles.output = hObject;
handles.currentImageIndex=1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled5 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled5_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=guidata(hObject);
if(data.currentImageIndex<=30)
    info=dicominfo("3b_mpr_pr_hf_vfh."+data.currentImageIndex+".dcm");
    I=dicomread(info);
    axes(handles.axes1);
    imshow(I,'DisplayRange',[]);
    data.currentImageIndex=data.currentImageIndex+1;
else
    data.currentImageIndex=1;
end
guidata(hObject,data);


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
data=guidata(hObject);
if(data.currentImageIndex<=30)
    info=dicominfo("3b_mpr_pr_hf_vfh."+data.currentImageIndex+".dcm");
    I=dicomread(info);
    axes(handles.axes1);
    imshow(I,'DisplayRange',[]);
    data.currentImageIndex=data.currentImageIndex+1;
else
    data.currentImageIndex=1;
end
guidata(hObject,data);
