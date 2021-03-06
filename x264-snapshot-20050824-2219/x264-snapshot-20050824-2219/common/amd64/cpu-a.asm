;*****************************************************************************
;* cpu.asm: h264 encoder library
;*****************************************************************************
;* Copyright (C) 2003 x264 project
;* $Id: cpu.asm,v 1.1 2004/06/03 19:27:07 fenrir Exp $
;*
;* Authors: Laurent Aimar <fenrir@via.ecp.fr>
;*
;* This program is free software; you can redistribute it and/or modify
;* it under the terms of the GNU General Public License as published by
;* the Free Software Foundation; either version 2 of the License, or
;* (at your option) any later version.
;*
;* This program is distributed in the hope that it will be useful,
;* but WITHOUT ANY WARRANTY; without even the implied warranty of
;* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;* GNU General Public License for more details.
;*
;* You should have received a copy of the GNU General Public License
;* along with this program; if not, write to the Free Software
;* Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111, USA.
;*****************************************************************************

BITS 64

;=============================================================================
; Macros and other preprocessor constants
;=============================================================================

%macro cglobal 1
	%ifdef PREFIX
		global _%1
		%define %1 _%1
	%else
		global %1
	%endif
%endmacro

;=============================================================================
; Code
;=============================================================================

SECTION .text

cglobal x264_cpu_cpuid_test
cglobal x264_cpu_cpuid
cglobal x264_emms

ALIGN 16
;-----------------------------------------------------------------------------
;   int __cdecl x264_cpu_cpuid_test( void ) return 0 if unsupported
;-----------------------------------------------------------------------------
x264_cpu_cpuid_test:
    pushfq
    push    rbx
    push    rbp

    pushfq
    pop     rax
    mov     ebx, eax
    xor     eax, 0x200000
    push    rax
    popfq
    pushfq
    pop     rax
    xor     eax, ebx
    
    pop     rbp
    pop     rbx
    popfq
    ret

ALIGN 16
;-----------------------------------------------------------------------------
;   int __cdecl x264_cpu_cpuid( int op, int *eax, int *ebx, int *ecx, int *edx )
;-----------------------------------------------------------------------------
x264_cpu_cpuid:

    push    rbp
    push    rbx
    mov	    r10,    rcx
    mov     r11,    rdx
    
    mov     eax,    edi
    cpuid

    mov     [rsi],  eax
    mov     [r11],  ebx
    mov     [r10],  ecx
    mov     [r8],  edx

    pop     rbx
    pop     rbp
    ret

ALIGN 16
;-----------------------------------------------------------------------------
;   void __cdecl x264_emms( void )
;-----------------------------------------------------------------------------
x264_emms:
    emms
    ret

