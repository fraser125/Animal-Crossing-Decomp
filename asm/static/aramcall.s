.include "macros.inc"

.section .text

.org 0x80031D80

.global Jac_RegisterARAMCallback__FPFPcUlUlPUlP7jaheap__Ul
Jac_RegisterARAMCallback__FPFPcUlUlPUlP7jaheap__Ul:
/* 80031D80 0002ECE0  90 6D 80 C0 */	stw r3, ARCALL-_SDA_BASE_(r13)
/* 80031D84 0002ECE4  4E 80 00 20 */	blr 
/* 80031D88 0002ECE8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D8C 0002ECEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D90 0002ECF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D94 0002ECF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D98 0002ECF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031D9C 0002ECFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global LoadAram__FPcPUlUl
LoadAram__FPcPUlUl:
/* 80031DA0 0002ED00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031DA4 0002ED04  7C 08 02 A6 */	mflr r0
/* 80031DA8 0002ED08  7C 88 23 78 */	mr r8, r4
/* 80031DAC 0002ED0C  38 C0 00 00 */	li r6, 0
/* 80031DB0 0002ED10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031DB4 0002ED14  7C 60 1B 78 */	mr r0, r3
/* 80031DB8 0002ED18  38 60 00 00 */	li r3, 0
/* 80031DBC 0002ED1C  38 E0 00 00 */	li r7, 0
/* 80031DC0 0002ED20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80031DC4 0002ED24  7C BF 2B 78 */	mr r31, r5
/* 80031DC8 0002ED28  7C 04 03 78 */	mr r4, r0
/* 80031DCC 0002ED2C  39 20 00 00 */	li r9, 0
/* 80031DD0 0002ED30  4B FE 8A B1 */	bl DVDT_LoadtoARAM__FUlPcUlUlUlPUlPFUl_v
/* 80031DD4 0002ED34  38 03 00 01 */	addi r0, r3, 1
/* 80031DD8 0002ED38  30 00 FF FF */	addic r0, r0, -1
/* 80031DDC 0002ED3C  7C 00 01 10 */	subfe r0, r0, r0
/* 80031DE0 0002ED40  7F E3 00 78 */	andc r3, r31, r0
/* 80031DE4 0002ED44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031DE8 0002ED48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031DEC 0002ED4C  7C 08 03 A6 */	mtlr r0
/* 80031DF0 0002ED50  38 21 00 10 */	addi r1, r1, 0x10
/* 80031DF4 0002ED54  4E 80 00 20 */	blr 
/* 80031DF8 0002ED58  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031DFC 0002ED5C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global LoadAramSingle__FPcUlUlPUlUl
LoadAramSingle__FPcUlUlPUlUl:
/* 80031E00 0002ED60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031E04 0002ED64  7C 08 02 A6 */	mflr r0
/* 80031E08 0002ED68  7C 89 23 78 */	mr r9, r4
/* 80031E0C 0002ED6C  7C C8 33 78 */	mr r8, r6
/* 80031E10 0002ED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031E14 0002ED74  7C 64 1B 78 */	mr r4, r3
/* 80031E18 0002ED78  7D 26 4B 78 */	mr r6, r9
/* 80031E1C 0002ED7C  7C A0 2B 78 */	mr r0, r5
/* 80031E20 0002ED80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80031E24 0002ED84  7C FF 3B 78 */	mr r31, r7
/* 80031E28 0002ED88  7F E5 FB 78 */	mr r5, r31
/* 80031E2C 0002ED8C  7C 07 03 78 */	mr r7, r0
/* 80031E30 0002ED90  38 60 00 00 */	li r3, 0
/* 80031E34 0002ED94  39 20 00 00 */	li r9, 0
/* 80031E38 0002ED98  4B FE 8A 49 */	bl DVDT_LoadtoARAM__FUlPcUlUlUlPUlPFUl_v
/* 80031E3C 0002ED9C  38 03 00 01 */	addi r0, r3, 1
/* 80031E40 0002EDA0  30 00 FF FF */	addic r0, r0, -1
/* 80031E44 0002EDA4  7C 00 01 10 */	subfe r0, r0, r0
/* 80031E48 0002EDA8  7F E3 00 78 */	andc r3, r31, r0
/* 80031E4C 0002EDAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80031E50 0002EDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031E54 0002EDB4  7C 08 03 A6 */	mtlr r0
/* 80031E58 0002EDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80031E5C 0002EDBC  4E 80 00 20 */	blr 

.global Jac_WaveDirectorySet__FPc
Jac_WaveDirectorySet__FPc:
/* 80031E60 0002EDC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031E64 0002EDC4  7C 08 02 A6 */	mflr r0
/* 80031E68 0002EDC8  3C A0 80 0D */	lis r5, extdir@ha
/* 80031E6C 0002EDCC  7C 64 1B 78 */	mr r4, r3
/* 80031E70 0002EDD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031E74 0002EDD4  38 65 5C 48 */	addi r3, r5, extdir@l
/* 80031E78 0002EDD8  48 06 D9 1D */	bl strcpy
/* 80031E7C 0002EDDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031E80 0002EDE0  7C 08 03 A6 */	mtlr r0
/* 80031E84 0002EDE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80031E88 0002EDE8  4E 80 00 20 */	blr 
/* 80031E8C 0002EDEC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031E90 0002EDF0  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031E94 0002EDF4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031E98 0002EDF8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031E9C 0002EDFC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Get_AramMotherHeap__Fv
Get_AramMotherHeap__Fv:
/* 80031EA0 0002EE00  3C 60 80 21 */	lis r3, aram_mother@ha
/* 80031EA4 0002EE04  38 63 7B 38 */	addi r3, r3, aram_mother@l
/* 80031EA8 0002EE08  4E 80 00 20 */	blr 
/* 80031EAC 0002EE0C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031EB0 0002EE10  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031EB4 0002EE14  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031EB8 0002EE18  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031EBC 0002EE1C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global Init_AramMotherHeap__Fv
Init_AramMotherHeap__Fv:
/* 80031EC0 0002EE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80031EC4 0002EE24  7C 08 02 A6 */	mflr r0
/* 80031EC8 0002EE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80031ECC 0002EE2C  88 0D 89 EC */	lbz r0, lbl_8021856C-_SDA_BASE_(r13)
/* 80031ED0 0002EE30  7C 00 07 75 */	extsb. r0, r0
/* 80031ED4 0002EE34  40 82 00 14 */	bne lbl_80031EE8
/* 80031ED8 0002EE38  38 60 00 00 */	li r3, 0
/* 80031EDC 0002EE3C  38 00 00 01 */	li r0, 1
/* 80031EE0 0002EE40  90 6D 89 E8 */	stw r3, inited$149-_SDA_BASE_(r13)
/* 80031EE4 0002EE44  98 0D 89 EC */	stb r0, lbl_8021856C-_SDA_BASE_(r13)
lbl_80031EE8:
/* 80031EE8 0002EE48  80 0D 89 E8 */	lwz r0, inited$149-_SDA_BASE_(r13)
/* 80031EEC 0002EE4C  2C 00 00 00 */	cmpwi r0, 0
/* 80031EF0 0002EE50  40 82 00 2C */	bne lbl_80031F1C
/* 80031EF4 0002EE54  38 00 00 01 */	li r0, 1
/* 80031EF8 0002EE58  38 61 00 08 */	addi r3, r1, 8
/* 80031EFC 0002EE5C  90 0D 89 E8 */	stw r0, inited$149-_SDA_BASE_(r13)
/* 80031F00 0002EE60  4B FE 6B 81 */	bl ARAllocFull__FPUl
/* 80031F04 0002EE64  3C C0 80 21 */	lis r6, aram_mother@ha
/* 80031F08 0002EE68  80 A1 00 08 */	lwz r5, 8(r1)
/* 80031F0C 0002EE6C  7C 64 1B 78 */	mr r4, r3
/* 80031F10 0002EE70  38 66 7B 38 */	addi r3, r6, aram_mother@l
/* 80031F14 0002EE74  38 C0 00 00 */	li r6, 0
/* 80031F18 0002EE78  48 00 0B 89 */	bl Jac_InitMotherHeap__FP7jaheap_UlUlUc
lbl_80031F1C:
/* 80031F1C 0002EE7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80031F20 0002EE80  7C 08 03 A6 */	mtlr r0
/* 80031F24 0002EE84  38 21 00 10 */	addi r1, r1, 0x10
/* 80031F28 0002EE88  4E 80 00 20 */	blr 
/* 80031F2C 0002EE8C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031F30 0002EE90  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031F34 0002EE94  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031F38 0002EE98  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80031F3C 0002EE9C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global LoadAram_Default__FPcUlUlPUlP7jaheap_
LoadAram_Default__FPcUlUlPUlP7jaheap_:
/* 80031F40 0002EEA0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80031F44 0002EEA4  7C 08 02 A6 */	mflr r0
/* 80031F48 0002EEA8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80031F4C 0002EEAC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80031F50 0002EEB0  48 06 8F 7D */	bl func_8009AECC
/* 80031F54 0002EEB4  80 0D 80 C4 */	lwz r0, first-_SDA_BASE_(r13)
/* 80031F58 0002EEB8  7C 7B 1B 78 */	mr r27, r3
/* 80031F5C 0002EEBC  7C 9C 23 78 */	mr r28, r4
/* 80031F60 0002EEC0  7C BD 2B 78 */	mr r29, r5
/* 80031F64 0002EEC4  2C 00 00 00 */	cmpwi r0, 0
/* 80031F68 0002EEC8  7C DE 33 78 */	mr r30, r6
/* 80031F6C 0002EECC  7C FF 3B 78 */	mr r31, r7
/* 80031F70 0002EED0  41 82 00 10 */	beq lbl_80031F80
/* 80031F74 0002EED4  4B FF FF 4D */	bl Init_AramMotherHeap__Fv
/* 80031F78 0002EED8  38 00 00 00 */	li r0, 0
/* 80031F7C 0002EEDC  90 0D 80 C4 */	stw r0, first-_SDA_BASE_(r13)
lbl_80031F80:
/* 80031F80 0002EEE0  3C 80 80 0D */	lis r4, extdir@ha
/* 80031F84 0002EEE4  38 61 00 08 */	addi r3, r1, 8
/* 80031F88 0002EEE8  38 84 5C 48 */	addi r4, r4, extdir@l
/* 80031F8C 0002EEEC  48 06 D8 09 */	bl strcpy
/* 80031F90 0002EEF0  7F 64 DB 78 */	mr r4, r27
/* 80031F94 0002EEF4  38 61 00 08 */	addi r3, r1, 8
/* 80031F98 0002EEF8  48 06 D7 8D */	bl strcat
/* 80031F9C 0002EEFC  28 1C 00 00 */	cmplwi r28, 0
/* 80031FA0 0002EF00  40 82 00 4C */	bne lbl_80031FEC
/* 80031FA4 0002EF04  28 1D 00 00 */	cmplwi r29, 0
/* 80031FA8 0002EF08  40 82 00 44 */	bne lbl_80031FEC
/* 80031FAC 0002EF0C  38 61 00 08 */	addi r3, r1, 8
/* 80031FB0 0002EF10  4B FE 8B 51 */	bl DVDT_CheckFile__FPc
/* 80031FB4 0002EF14  3C 80 80 21 */	lis r4, aram_mother@ha
/* 80031FB8 0002EF18  7C 65 1B 78 */	mr r5, r3
/* 80031FBC 0002EF1C  7F E3 FB 78 */	mr r3, r31
/* 80031FC0 0002EF20  38 84 7B 38 */	addi r4, r4, aram_mother@l
/* 80031FC4 0002EF24  48 00 0B 3D */	bl Jac_AllocHeap__FP7jaheap_P7jaheap_Ul
/* 80031FC8 0002EF28  2C 03 00 00 */	cmpwi r3, 0
/* 80031FCC 0002EF2C  40 82 00 0C */	bne lbl_80031FD8
/* 80031FD0 0002EF30  38 60 00 00 */	li r3, 0
/* 80031FD4 0002EF34  48 00 00 54 */	b lbl_80032028
lbl_80031FD8:
/* 80031FD8 0002EF38  80 BF 00 08 */	lwz r5, 8(r31)
/* 80031FDC 0002EF3C  7F C4 F3 78 */	mr r4, r30
/* 80031FE0 0002EF40  38 61 00 08 */	addi r3, r1, 8
/* 80031FE4 0002EF44  4B FF FD BD */	bl LoadAram__FPcPUlUl
/* 80031FE8 0002EF48  48 00 00 40 */	b lbl_80032028
lbl_80031FEC:
/* 80031FEC 0002EF4C  3C 80 80 21 */	lis r4, aram_mother@ha
/* 80031FF0 0002EF50  7F E3 FB 78 */	mr r3, r31
/* 80031FF4 0002EF54  38 84 7B 38 */	addi r4, r4, aram_mother@l
/* 80031FF8 0002EF58  7F A5 EB 78 */	mr r5, r29
/* 80031FFC 0002EF5C  48 00 0B 05 */	bl Jac_AllocHeap__FP7jaheap_P7jaheap_Ul
/* 80032000 0002EF60  2C 03 00 00 */	cmpwi r3, 0
/* 80032004 0002EF64  40 82 00 0C */	bne lbl_80032010
/* 80032008 0002EF68  38 60 00 00 */	li r3, 0
/* 8003200C 0002EF6C  48 00 00 1C */	b lbl_80032028
lbl_80032010:
/* 80032010 0002EF70  80 FF 00 08 */	lwz r7, 8(r31)
/* 80032014 0002EF74  7F 84 E3 78 */	mr r4, r28
/* 80032018 0002EF78  7F A5 EB 78 */	mr r5, r29
/* 8003201C 0002EF7C  7F C6 F3 78 */	mr r6, r30
/* 80032020 0002EF80  38 61 00 08 */	addi r3, r1, 8
/* 80032024 0002EF84  4B FF FD DD */	bl LoadAramSingle__FPcUlUlPUlUl
lbl_80032028:
/* 80032028 0002EF88  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8003202C 0002EF8C  48 06 8E ED */	bl func_8009AF18
/* 80032030 0002EF90  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80032034 0002EF94  7C 08 03 A6 */	mtlr r0
/* 80032038 0002EF98  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8003203C 0002EF9C  4E 80 00 20 */	blr 

.global LoadAram_All__FPcPUlP7jaheap_
LoadAram_All__FPcPUlP7jaheap_:
/* 80032040 0002EFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032044 0002EFA4  7C 08 02 A6 */	mflr r0
/* 80032048 0002EFA8  7C 86 23 78 */	mr r6, r4
/* 8003204C 0002EFAC  7C A7 2B 78 */	mr r7, r5
/* 80032050 0002EFB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032054 0002EFB4  38 80 00 00 */	li r4, 0
/* 80032058 0002EFB8  38 A0 00 00 */	li r5, 0
/* 8003205C 0002EFBC  81 8D 80 C0 */	lwz r12, ARCALL-_SDA_BASE_(r13)
/* 80032060 0002EFC0  7D 89 03 A6 */	mtctr r12
/* 80032064 0002EFC4  4E 80 04 21 */	bctrl 
/* 80032068 0002EFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003206C 0002EFCC  7C 08 03 A6 */	mtlr r0
/* 80032070 0002EFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80032074 0002EFD4  4E 80 00 20 */	blr 
/* 80032078 0002EFD8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8003207C 0002EFDC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */

.global LoadAram_One__FPcUlUlPUlP7jaheap_
LoadAram_One__FPcUlUlPUlP7jaheap_:
/* 80032080 0002EFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032084 0002EFE4  7C 08 02 A6 */	mflr r0
/* 80032088 0002EFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003208C 0002EFEC  81 8D 80 C0 */	lwz r12, ARCALL-_SDA_BASE_(r13)
/* 80032090 0002EFF0  7D 89 03 A6 */	mtctr r12
/* 80032094 0002EFF4  4E 80 04 21 */	bctrl 
/* 80032098 0002EFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003209C 0002EFFC  7C 08 03 A6 */	mtlr r0
/* 800320A0 0002F000  38 21 00 10 */	addi r1, r1, 0x10
/* 800320A4 0002F004  4E 80 00 20 */	blr 
/* 800320A8 0002F008  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800320AC 0002F00C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800320B0 0002F010  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800320B4 0002F014  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800320B8 0002F018  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 800320BC 0002F01C  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
