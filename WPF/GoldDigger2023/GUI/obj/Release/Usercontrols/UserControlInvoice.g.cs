﻿#pragma checksum "..\..\..\Usercontrols\UserControlInvoice.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "1DFFE065441CD69DE915643C04D5010029A2C004063C067A08EEA177A3E6EA9C"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using GUI.Usercontrols;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace GUI.Usercontrols {
    
    
    /// <summary>
    /// UserControlInvoice
    /// </summary>
    public partial class UserControlInvoice : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 10 "..\..\..\Usercontrols\UserControlInvoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid MainGrid;
        
        #line default
        #line hidden
        
        
        #line 117 "..\..\..\Usercontrols\UserControlInvoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonAddMetalToOrder;
        
        #line default
        #line hidden
        
        
        #line 128 "..\..\..\Usercontrols\UserControlInvoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button RemoveOrderlineFromOrder;
        
        #line default
        #line hidden
        
        
        #line 138 "..\..\..\Usercontrols\UserControlInvoice.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button ButtonCompleteOrder;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/GUI;component/usercontrols/usercontrolinvoice.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\Usercontrols\UserControlInvoice.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.MainGrid = ((System.Windows.Controls.Grid)(target));
            return;
            case 2:
            this.ButtonAddMetalToOrder = ((System.Windows.Controls.Button)(target));
            
            #line 127 "..\..\..\Usercontrols\UserControlInvoice.xaml"
            this.ButtonAddMetalToOrder.Click += new System.Windows.RoutedEventHandler(this.ButtonAddMetalToOrder_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.RemoveOrderlineFromOrder = ((System.Windows.Controls.Button)(target));
            
            #line 137 "..\..\..\Usercontrols\UserControlInvoice.xaml"
            this.RemoveOrderlineFromOrder.Click += new System.Windows.RoutedEventHandler(this.RemoveOrderlineFromOrder_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.ButtonCompleteOrder = ((System.Windows.Controls.Button)(target));
            
            #line 147 "..\..\..\Usercontrols\UserControlInvoice.xaml"
            this.ButtonCompleteOrder.Click += new System.Windows.RoutedEventHandler(this.ButtonCompleteOrder_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

