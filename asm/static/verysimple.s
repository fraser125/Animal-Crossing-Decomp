.include "macros.inc"

.section .text

.org 0x80008400

.global Jac_Start__FPvUlUl
Jac_Start__FPvUlUl:
/* 80008400 00005360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80008404 00005364  7C 08 02 A6 */	mflr r0
/* 80008408 00005368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000840C 0000536C  90 61 00 08 */	stw r3, 8(r1)
/* 80008410 00005370  90 81 00 0C */	stw r4, 0xc(r1)
/* 80008414 00005374  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80008418 00005378  80 61 00 08 */	lwz r3, 8(r1)
/* 8000841C 0000537C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80008420 00005380  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80008424 00005384  38 C0 00 07 */	li r6, 7
/* 80008428 00005388  48 01 0B 59 */	bl StartAudioThread
/* 8000842C 0000538C  38 6D 80 00 */	addi r3, r13, lbl_80217B80-_SDA_BASE_
/* 80008430 00005390  48 02 9A 31 */	bl Jac_WaveDirectorySet__FPc
/* 80008434 00005394  48 00 00 19 */	bl Jac_PlayInit__Fv
/* 80008438 00005398  48 02 A4 29 */	bl Jac_Portcmd_Init
/* 8000843C 0000539C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80008440 000053A0  7C 08 03 A6 */	mtlr r0
/* 80008444 000053A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80008448 000053A8  4E 80 00 20 */	blr 

.global Jac_PlayInit__Fv
Jac_PlayInit__Fv:
/* 8000844C 000053AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80008450 000053B0  7C 08 02 A6 */	mflr r0
/* 80008454 000053B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80008458 000053B8  48 02 EC 29 */	bl Jaq_Reset
/* 8000845C 000053BC  48 02 90 C5 */	bl Jac_ConnectTableInit__Fv
/* 80008460 000053C0  48 02 B8 81 */	bl Jam_InitRegistTrack
/* 80008464 000053C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80008468 000053C8  7C 08 03 A6 */	mtlr r0
/* 8000846C 000053CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80008470 000053D0  4E 80 00 20 */	blr 
/* 80008474 000053D4  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 80008478 000053D8  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
/* 8000847C 000053DC  00 00 00 00 */	.4byte 0x00000000  /* unknown instruction */
