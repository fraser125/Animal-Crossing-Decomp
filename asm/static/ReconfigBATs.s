.include "macros.inc"

.section .text

.org 0x8005ADAC

.global Config24MB
Config24MB:
/* 8005ADAC 00057D0C  7C 60 00 A6 */	mfmsr r3
/* 8005ADB0 00057D10  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 8005ADB4 00057D14  7C 60 01 24 */	mtmsr r3
/* 8005ADB8 00057D18  4C 00 01 2C */	isync 
/* 8005ADBC 00057D1C  38 E0 00 00 */	li r7, 0
/* 8005ADC0 00057D20  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 8005ADC4 00057D24  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 8005ADC8 00057D28  3C 60 80 00 */	lis r3, 0x800001FF@ha
/* 8005ADCC 00057D2C  38 63 01 FF */	addi r3, r3, 0x800001FF@l
/* 8005ADD0 00057D30  3C C0 01 00 */	lis r6, 0x01000002@ha
/* 8005ADD4 00057D34  38 C6 00 02 */	addi r6, r6, 0x01000002@l
/* 8005ADD8 00057D38  3C A0 81 00 */	lis r5, 0x810000FF@ha
/* 8005ADDC 00057D3C  38 A5 00 FF */	addi r5, r5, 0x810000FF@l
/* 8005ADE0 00057D40  4C 00 01 2C */	isync 
/* 8005ADE4 00057D44  7C F8 83 A6 */	mtdbatu 0, r7
/* 8005ADE8 00057D48  7C 99 83 A6 */	mtdbatl 0, r4
/* 8005ADEC 00057D4C  7C 78 83 A6 */	mtdbatu 0, r3
/* 8005ADF0 00057D50  4C 00 01 2C */	isync 
/* 8005ADF4 00057D54  7C FC 83 A6 */	mtdbatu 2, r7
/* 8005ADF8 00057D58  7C DD 83 A6 */	mtdbatl 2, r6
/* 8005ADFC 00057D5C  7C BC 83 A6 */	mtdbatu 2, r5
/* 8005AE00 00057D60  4C 00 01 2C */	isync 
/* 8005AE04 00057D64  7C 60 00 A6 */	mfmsr r3
/* 8005AE08 00057D68  60 63 00 10 */	ori r3, r3, 0x10
/* 8005AE0C 00057D6C  7C 60 01 24 */	mtmsr r3
/* 8005AE10 00057D70  4C 00 01 2C */	isync 
/* 8005AE14 00057D74  4E 80 00 20 */	blr 

.global Config48MB
Config48MB:
/* 8005AE18 00057D78  7C 60 00 A6 */	mfmsr r3
/* 8005AE1C 00057D7C  54 63 07 34 */	rlwinm r3, r3, 0, 0x1c, 0x1a
/* 8005AE20 00057D80  7C 60 01 24 */	mtmsr r3
/* 8005AE24 00057D84  4C 00 01 2C */	isync 
/* 8005AE28 00057D88  38 E0 00 00 */	li r7, 0
/* 8005AE2C 00057D8C  3C 80 00 00 */	lis r4, 0x00000002@ha
/* 8005AE30 00057D90  38 84 00 02 */	addi r4, r4, 0x00000002@l
/* 8005AE34 00057D94  3C 60 80 00 */	lis r3, 0x800003FF@ha
/* 8005AE38 00057D98  38 63 03 FF */	addi r3, r3, 0x800003FF@l
/* 8005AE3C 00057D9C  3C C0 02 00 */	lis r6, 0x02000002@ha
/* 8005AE40 00057DA0  38 C6 00 02 */	addi r6, r6, 0x02000002@l
/* 8005AE44 00057DA4  3C A0 82 00 */	lis r5, 0x820001FF@ha
/* 8005AE48 00057DA8  38 A5 01 FF */	addi r5, r5, 0x820001FF@l
/* 8005AE4C 00057DAC  4C 00 01 2C */	isync 
/* 8005AE50 00057DB0  7C F8 83 A6 */	mtdbatu 0, r7
/* 8005AE54 00057DB4  7C 99 83 A6 */	mtdbatl 0, r4
/* 8005AE58 00057DB8  7C 78 83 A6 */	mtdbatu 0, r3
/* 8005AE5C 00057DBC  4C 00 01 2C */	isync 
/* 8005AE60 00057DC0  7C FC 83 A6 */	mtdbatu 2, r7
/* 8005AE64 00057DC4  7C DD 83 A6 */	mtdbatl 2, r6
/* 8005AE68 00057DC8  7C BC 83 A6 */	mtdbatu 2, r5
/* 8005AE6C 00057DCC  4C 00 01 2C */	isync 
/* 8005AE70 00057DD0  7C 60 00 A6 */	mfmsr r3
/* 8005AE74 00057DD4  60 63 00 10 */	ori r3, r3, 0x10
/* 8005AE78 00057DD8  7C 60 01 24 */	mtmsr r3
/* 8005AE7C 00057DDC  4C 00 01 2C */	isync 
/* 8005AE80 00057DE0  4E 80 00 20 */	blr 

.global ReconfigBATs
ReconfigBATs:
/* 8005AE84 00057DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005AE88 00057DE8  7C 08 02 A6 */	mflr r0
/* 8005AE8C 00057DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005AE90 00057DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005AE94 00057DF4  48 01 FD 91 */	bl OSDisableInterrupts
/* 8005AE98 00057DF8  7C 7F 1B 78 */	mr r31, r3
/* 8005AE9C 00057DFC  48 02 10 5D */	bl OSGetConsoleSimulatedMemSize
/* 8005AEA0 00057E00  3C 00 01 80 */	lis r0, 0x180
/* 8005AEA4 00057E04  7C 03 00 40 */	cmplw r3, r0
/* 8005AEA8 00057E08  41 81 00 0C */	bgt lbl_8005AEB4
/* 8005AEAC 00057E0C  4B FF FF 01 */	bl Config24MB
/* 8005AEB0 00057E10  48 00 00 08 */	b lbl_8005AEB8
lbl_8005AEB4:
/* 8005AEB4 00057E14  4B FF FF 65 */	bl Config48MB
lbl_8005AEB8:
/* 8005AEB8 00057E18  7F E3 FB 78 */	mr r3, r31
/* 8005AEBC 00057E1C  48 01 FD 91 */	bl OSRestoreInterrupts
/* 8005AEC0 00057E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005AEC4 00057E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005AEC8 00057E28  7C 08 03 A6 */	mtlr r0
/* 8005AECC 00057E2C  38 21 00 10 */	addi r1, r1, 0x10
/* 8005AED0 00057E30  4E 80 00 20 */	blr 