.include "macros.inc"

.section .text

.org 0x8007CCA4

.global __OSResetSWInterruptHandler
__OSResetSWInterruptHandler:
/* 8007CCA4 00079C04  7C 08 02 A6 */	mflr r0
/* 8007CCA8 00079C08  90 01 00 04 */	stw r0, 4(r1)
/* 8007CCAC 00079C0C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8007CCB0 00079C10  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8007CCB4 00079C14  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8007CCB8 00079C18  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8007CCBC 00079C1C  48 00 2A 5D */	bl __OSGetSystemTime
/* 8007CCC0 00079C20  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8007CCC4 00079C24  90 8D 8D CC */	stw r4, lbl_8021894C-_SDA_BASE_(r13)
/* 8007CCC8 00079C28  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8007CCCC 00079C2C  3C 80 43 1C */	lis r4, 0x431BDE83@ha
/* 8007CCD0 00079C30  38 84 DE 83 */	addi r4, r4, 0x431BDE83@l
/* 8007CCD4 00079C34  90 6D 8D C8 */	stw r3, HoldDown-_SDA_BASE_(r13)
/* 8007CCD8 00079C38  54 00 F0 BE */	srwi r0, r0, 2
/* 8007CCDC 00079C3C  7C 04 00 16 */	mulhwu r0, r4, r0
/* 8007CCE0 00079C40  54 00 8B FE */	srwi r0, r0, 0xf
/* 8007CCE4 00079C44  1C 00 00 64 */	mulli r0, r0, 0x64
/* 8007CCE8 00079C48  54 1D E8 FE */	srwi r29, r0, 3
/* 8007CCEC 00079C4C  3B C0 00 00 */	li r30, 0
/* 8007CCF0 00079C50  3F E0 CC 00 */	lis r31, 0xcc00
lbl_8007CCF4:
/* 8007CCF4 00079C54  48 00 2A 25 */	bl __OSGetSystemTime
/* 8007CCF8 00079C58  80 CD 8D CC */	lwz r6, lbl_8021894C-_SDA_BASE_(r13)
/* 8007CCFC 00079C5C  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 8007CD00 00079C60  80 0D 8D C8 */	lwz r0, HoldDown-_SDA_BASE_(r13)
/* 8007CD04 00079C64  7C 86 20 10 */	subfc r4, r6, r4
/* 8007CD08 00079C68  7C 00 19 10 */	subfe r0, r0, r3
/* 8007CD0C 00079C6C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 8007CD10 00079C70  7C 1D 20 10 */	subfc r0, r29, r4
/* 8007CD14 00079C74  7C A5 19 10 */	subfe r5, r5, r3
/* 8007CD18 00079C78  7C A3 19 10 */	subfe r5, r3, r3
/* 8007CD1C 00079C7C  7C A5 00 D1 */	neg. r5, r5
/* 8007CD20 00079C80  41 82 00 10 */	beq lbl_8007CD30
/* 8007CD24 00079C84  80 1F 30 00 */	lwz r0, 0x3000(r31)
/* 8007CD28 00079C88  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8007CD2C 00079C8C  41 82 FF C8 */	beq lbl_8007CCF4
lbl_8007CD30:
/* 8007CD30 00079C90  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8007CD34 00079C94  80 03 30 00 */	lwz r0, 0xCC003000@l(r3)
/* 8007CD38 00079C98  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8007CD3C 00079C9C  40 82 00 34 */	bne lbl_8007CD70
/* 8007CD40 00079CA0  38 00 00 01 */	li r0, 1
/* 8007CD44 00079CA4  90 0D 8D B4 */	stw r0, Down-_SDA_BASE_(r13)
/* 8007CD48 00079CA8  38 60 02 00 */	li r3, 0x200
/* 8007CD4C 00079CAC  90 0D 8D B8 */	stw r0, LastState-_SDA_BASE_(r13)
/* 8007CD50 00079CB0  4B FF E2 9D */	bl __OSMaskInterrupts
/* 8007CD54 00079CB4  81 8D 8D B0 */	lwz r12, ResetCallback-_SDA_BASE_(r13)
/* 8007CD58 00079CB8  28 0C 00 00 */	cmplwi r12, 0
/* 8007CD5C 00079CBC  41 82 00 14 */	beq lbl_8007CD70
/* 8007CD60 00079CC0  38 00 00 00 */	li r0, 0
/* 8007CD64 00079CC4  7D 88 03 A6 */	mtlr r12
/* 8007CD68 00079CC8  90 0D 8D B0 */	stw r0, ResetCallback-_SDA_BASE_(r13)
/* 8007CD6C 00079CCC  4E 80 00 21 */	blrl 
lbl_8007CD70:
/* 8007CD70 00079CD0  38 00 00 02 */	li r0, 2
/* 8007CD74 00079CD4  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 8007CD78 00079CD8  90 03 30 00 */	stw r0, 0xCC003000@l(r3)
/* 8007CD7C 00079CDC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8007CD80 00079CE0  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8007CD84 00079CE4  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8007CD88 00079CE8  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8007CD8C 00079CEC  38 21 00 28 */	addi r1, r1, 0x28
/* 8007CD90 00079CF0  7C 08 03 A6 */	mtlr r0
/* 8007CD94 00079CF4  4E 80 00 20 */	blr 

.global OSGetResetButtonState
OSGetResetButtonState:
/* 8007CD98 00079CF8  7C 08 02 A6 */	mflr r0
/* 8007CD9C 00079CFC  90 01 00 04 */	stw r0, 4(r1)
/* 8007CDA0 00079D00  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8007CDA4 00079D04  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8007CDA8 00079D08  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8007CDAC 00079D0C  93 A1 00 0C */	stw r29, 0xc(r1)
/* 8007CDB0 00079D10  4B FF DE 75 */	bl OSDisableInterrupts
/* 8007CDB4 00079D14  7C 7E 1B 78 */	mr r30, r3
/* 8007CDB8 00079D18  48 00 29 61 */	bl __OSGetSystemTime
/* 8007CDBC 00079D1C  3C A0 CC 00 */	lis r5, 0xCC003000@ha
/* 8007CDC0 00079D20  80 05 30 00 */	lwz r0, 0xCC003000@l(r5)
/* 8007CDC4 00079D24  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8007CDC8 00079D28  40 82 00 DC */	bne lbl_8007CEA4
/* 8007CDCC 00079D2C  80 0D 8D B4 */	lwz r0, Down-_SDA_BASE_(r13)
/* 8007CDD0 00079D30  2C 00 00 00 */	cmpwi r0, 0
/* 8007CDD4 00079D34  40 82 00 40 */	bne lbl_8007CE14
/* 8007CDD8 00079D38  80 0D 8D C0 */	lwz r0, HoldUp-_SDA_BASE_(r13)
/* 8007CDDC 00079D3C  38 C0 00 00 */	li r6, 0
/* 8007CDE0 00079D40  80 AD 8D C4 */	lwz r5, lbl_80218944-_SDA_BASE_(r13)
/* 8007CDE4 00079D44  38 E0 00 01 */	li r7, 1
/* 8007CDE8 00079D48  7C 00 32 78 */	xor r0, r0, r6
/* 8007CDEC 00079D4C  7C A5 32 78 */	xor r5, r5, r6
/* 8007CDF0 00079D50  90 ED 8D B4 */	stw r7, Down-_SDA_BASE_(r13)
/* 8007CDF4 00079D54  7C A0 03 79 */	or. r0, r5, r0
/* 8007CDF8 00079D58  41 82 00 08 */	beq lbl_8007CE00
/* 8007CDFC 00079D5C  48 00 00 08 */	b lbl_8007CE04
lbl_8007CE00:
/* 8007CE00 00079D60  7C C7 33 78 */	mr r7, r6
lbl_8007CE04:
/* 8007CE04 00079D64  90 8D 8D CC */	stw r4, lbl_8021894C-_SDA_BASE_(r13)
/* 8007CE08 00079D68  7C FD 3B 78 */	mr r29, r7
/* 8007CE0C 00079D6C  90 6D 8D C8 */	stw r3, HoldDown-_SDA_BASE_(r13)
/* 8007CE10 00079D70  48 00 01 48 */	b lbl_8007CF58
lbl_8007CE14:
/* 8007CE14 00079D74  80 0D 8D C0 */	lwz r0, HoldUp-_SDA_BASE_(r13)
/* 8007CE18 00079D78  39 20 00 00 */	li r9, 0
/* 8007CE1C 00079D7C  80 AD 8D C4 */	lwz r5, lbl_80218944-_SDA_BASE_(r13)
/* 8007CE20 00079D80  39 40 00 01 */	li r10, 1
/* 8007CE24 00079D84  7C 00 4A 78 */	xor r0, r0, r9
/* 8007CE28 00079D88  7C A5 4A 78 */	xor r5, r5, r9
/* 8007CE2C 00079D8C  7C A0 03 79 */	or. r0, r5, r0
/* 8007CE30 00079D90  40 82 00 58 */	bne lbl_8007CE88
/* 8007CE34 00079D94  3C C0 80 00 */	lis r6, 0x800000F8@ha
/* 8007CE38 00079D98  80 AD 8D CC */	lwz r5, lbl_8021894C-_SDA_BASE_(r13)
/* 8007CE3C 00079D9C  80 E6 00 F8 */	lwz r7, 0x800000F8@l(r6)
/* 8007CE40 00079DA0  3C C0 43 1C */	lis r6, 0x431BDE83@ha
/* 8007CE44 00079DA4  39 06 DE 83 */	addi r8, r6, 0x431BDE83@l
/* 8007CE48 00079DA8  80 0D 8D C8 */	lwz r0, HoldDown-_SDA_BASE_(r13)
/* 8007CE4C 00079DAC  54 E6 F0 BE */	srwi r6, r7, 2
/* 8007CE50 00079DB0  7C C8 30 16 */	mulhwu r6, r8, r6
/* 8007CE54 00079DB4  54 C6 8B FE */	srwi r6, r6, 0xf
/* 8007CE58 00079DB8  1C C6 00 64 */	mulli r6, r6, 0x64
/* 8007CE5C 00079DBC  7C E5 20 10 */	subfc r7, r5, r4
/* 8007CE60 00079DC0  7C 00 19 10 */	subfe r0, r0, r3
/* 8007CE64 00079DC4  54 C8 E8 FE */	srwi r8, r6, 3
/* 8007CE68 00079DC8  6C 05 80 00 */	xoris r5, r0, 0x8000
/* 8007CE6C 00079DCC  6D 26 80 00 */	xoris r6, r9, 0x8000
/* 8007CE70 00079DD0  7C 07 40 10 */	subfc r0, r7, r8
/* 8007CE74 00079DD4  7C A5 31 10 */	subfe r5, r5, r6
/* 8007CE78 00079DD8  7C A6 31 10 */	subfe r5, r6, r6
/* 8007CE7C 00079DDC  7C A5 00 D1 */	neg. r5, r5
/* 8007CE80 00079DE0  40 82 00 08 */	bne lbl_8007CE88
/* 8007CE84 00079DE4  7D 2A 4B 78 */	mr r10, r9
lbl_8007CE88:
/* 8007CE88 00079DE8  2C 0A 00 00 */	cmpwi r10, 0
/* 8007CE8C 00079DEC  41 82 00 0C */	beq lbl_8007CE98
/* 8007CE90 00079DF0  38 00 00 01 */	li r0, 1
/* 8007CE94 00079DF4  48 00 00 08 */	b lbl_8007CE9C
lbl_8007CE98:
/* 8007CE98 00079DF8  38 00 00 00 */	li r0, 0
lbl_8007CE9C:
/* 8007CE9C 00079DFC  7C 1D 03 78 */	mr r29, r0
/* 8007CEA0 00079E00  48 00 00 B8 */	b lbl_8007CF58
lbl_8007CEA4:
/* 8007CEA4 00079E04  80 0D 8D B4 */	lwz r0, Down-_SDA_BASE_(r13)
/* 8007CEA8 00079E08  2C 00 00 00 */	cmpwi r0, 0
/* 8007CEAC 00079E0C  41 82 00 34 */	beq lbl_8007CEE0
/* 8007CEB0 00079E10  80 AD 8D B8 */	lwz r5, LastState-_SDA_BASE_(r13)
/* 8007CEB4 00079E14  38 00 00 00 */	li r0, 0
/* 8007CEB8 00079E18  90 0D 8D B4 */	stw r0, Down-_SDA_BASE_(r13)
/* 8007CEBC 00079E1C  2C 05 00 00 */	cmpwi r5, 0
/* 8007CEC0 00079E20  3B A5 00 00 */	addi r29, r5, 0
/* 8007CEC4 00079E24  41 82 00 10 */	beq lbl_8007CED4
/* 8007CEC8 00079E28  90 8D 8D C4 */	stw r4, lbl_80218944-_SDA_BASE_(r13)
/* 8007CECC 00079E2C  90 6D 8D C0 */	stw r3, HoldUp-_SDA_BASE_(r13)
/* 8007CED0 00079E30  48 00 00 88 */	b lbl_8007CF58
lbl_8007CED4:
/* 8007CED4 00079E34  90 0D 8D C4 */	stw r0, lbl_80218944-_SDA_BASE_(r13)
/* 8007CED8 00079E38  90 0D 8D C0 */	stw r0, HoldUp-_SDA_BASE_(r13)
/* 8007CEDC 00079E3C  48 00 00 7C */	b lbl_8007CF58
lbl_8007CEE0:
/* 8007CEE0 00079E40  80 CD 8D C0 */	lwz r6, HoldUp-_SDA_BASE_(r13)
/* 8007CEE4 00079E44  39 00 00 00 */	li r8, 0
/* 8007CEE8 00079E48  80 ED 8D C4 */	lwz r7, lbl_80218944-_SDA_BASE_(r13)
/* 8007CEEC 00079E4C  7C C0 42 78 */	xor r0, r6, r8
/* 8007CEF0 00079E50  7C E5 42 78 */	xor r5, r7, r8
/* 8007CEF4 00079E54  7C A0 03 79 */	or. r0, r5, r0
/* 8007CEF8 00079E58  41 82 00 50 */	beq lbl_8007CF48
/* 8007CEFC 00079E5C  3C A0 80 00 */	lis r5, 0x800000F8@ha
/* 8007CF00 00079E60  80 05 00 F8 */	lwz r0, 0x800000F8@l(r5)
/* 8007CF04 00079E64  3C A0 10 62 */	lis r5, 0x10624DD3@ha
/* 8007CF08 00079E68  38 A5 4D D3 */	addi r5, r5, 0x10624DD3@l
/* 8007CF0C 00079E6C  54 00 F0 BE */	srwi r0, r0, 2
/* 8007CF10 00079E70  7C 05 00 16 */	mulhwu r0, r5, r0
/* 8007CF14 00079E74  54 00 D1 BE */	srwi r0, r0, 6
/* 8007CF18 00079E78  1C 00 00 28 */	mulli r0, r0, 0x28
/* 8007CF1C 00079E7C  7C E7 20 10 */	subfc r7, r7, r4
/* 8007CF20 00079E80  7C A6 19 10 */	subfe r5, r6, r3
/* 8007CF24 00079E84  6C A6 80 00 */	xoris r6, r5, 0x8000
/* 8007CF28 00079E88  6D 05 80 00 */	xoris r5, r8, 0x8000
/* 8007CF2C 00079E8C  7C 00 38 10 */	subfc r0, r0, r7
/* 8007CF30 00079E90  7C A5 31 10 */	subfe r5, r5, r6
/* 8007CF34 00079E94  7C A6 31 10 */	subfe r5, r6, r6
/* 8007CF38 00079E98  7C A5 00 D1 */	neg. r5, r5
/* 8007CF3C 00079E9C  41 82 00 0C */	beq lbl_8007CF48
/* 8007CF40 00079EA0  3B A0 00 01 */	li r29, 1
/* 8007CF44 00079EA4  48 00 00 14 */	b lbl_8007CF58
lbl_8007CF48:
/* 8007CF48 00079EA8  38 00 00 00 */	li r0, 0
/* 8007CF4C 00079EAC  90 0D 8D C4 */	stw r0, lbl_80218944-_SDA_BASE_(r13)
/* 8007CF50 00079EB0  3B A0 00 00 */	li r29, 0
/* 8007CF54 00079EB4  90 0D 8D C0 */	stw r0, HoldUp-_SDA_BASE_(r13)
lbl_8007CF58:
/* 8007CF58 00079EB8  3C A0 80 00 */	lis r5, 0x800030E3@ha
/* 8007CF5C 00079EBC  93 AD 8D B8 */	stw r29, LastState-_SDA_BASE_(r13)
/* 8007CF60 00079EC0  88 05 30 E3 */	lbz r0, 0x800030E3@l(r5)
/* 8007CF64 00079EC4  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 8007CF68 00079EC8  41 82 00 A0 */	beq lbl_8007D008
/* 8007CF6C 00079ECC  1D 40 00 3C */	mulli r10, r0, 0x3c
/* 8007CF70 00079ED0  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 8007CF74 00079ED4  81 2D 8D 5C */	lwz r9, lbl_802188DC-_SDA_BASE_(r13)
/* 8007CF78 00079ED8  81 0D 8D 58 */	lwz r8, __OSStartTime-_SDA_BASE_(r13)
/* 8007CF7C 00079EDC  54 06 F0 BE */	srwi r6, r0, 2
/* 8007CF80 00079EE0  7D 40 FE 70 */	srawi r0, r10, 0x1f
/* 8007CF84 00079EE4  7C E0 31 D6 */	mullw r7, r0, r6
/* 8007CF88 00079EE8  7C 0A 30 16 */	mulhwu r0, r10, r6
/* 8007CF8C 00079EEC  7C AA 31 D6 */	mullw r5, r10, r6
/* 8007CF90 00079EF0  7D 29 28 14 */	addc r9, r9, r5
/* 8007CF94 00079EF4  3B E0 00 00 */	li r31, 0
/* 8007CF98 00079EF8  7C E7 02 14 */	add r7, r7, r0
/* 8007CF9C 00079EFC  7C 0A F9 D6 */	mullw r0, r10, r31
/* 8007CFA0 00079F00  7C 07 02 14 */	add r0, r7, r0
/* 8007CFA4 00079F04  7D 08 01 14 */	adde r8, r8, r0
/* 8007CFA8 00079F08  6D 07 80 00 */	xoris r7, r8, 0x8000
/* 8007CFAC 00079F0C  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 8007CFB0 00079F10  7C 04 48 10 */	subfc r0, r4, r9
/* 8007CFB4 00079F14  7C A5 39 10 */	subfe r5, r5, r7
/* 8007CFB8 00079F18  7C A7 39 10 */	subfe r5, r7, r7
/* 8007CFBC 00079F1C  7C A5 00 D1 */	neg. r5, r5
/* 8007CFC0 00079F20  41 82 00 48 */	beq lbl_8007D008
/* 8007CFC4 00079F24  7C 89 20 10 */	subfc r4, r9, r4
/* 8007CFC8 00079F28  7C 68 19 10 */	subfe r3, r8, r3
/* 8007CFCC 00079F2C  38 A0 00 00 */	li r5, 0
/* 8007CFD0 00079F30  48 01 E0 4D */	bl __div2i
/* 8007CFD4 00079F34  38 A0 00 00 */	li r5, 0
/* 8007CFD8 00079F38  38 C0 00 02 */	li r6, 2
/* 8007CFDC 00079F3C  48 01 E0 41 */	bl __div2i
/* 8007CFE0 00079F40  38 00 00 01 */	li r0, 1
/* 8007CFE4 00079F44  7C 84 00 38 */	and r4, r4, r0
/* 8007CFE8 00079F48  7C 60 F8 38 */	and r0, r3, r31
/* 8007CFEC 00079F4C  7C 83 FA 78 */	xor r3, r4, r31
/* 8007CFF0 00079F50  7C 00 FA 78 */	xor r0, r0, r31
/* 8007CFF4 00079F54  7C 60 03 79 */	or. r0, r3, r0
/* 8007CFF8 00079F58  40 82 00 0C */	bne lbl_8007D004
/* 8007CFFC 00079F5C  3B A0 00 01 */	li r29, 1
/* 8007D000 00079F60  48 00 00 08 */	b lbl_8007D008
lbl_8007D004:
/* 8007D004 00079F64  3B A0 00 00 */	li r29, 0
lbl_8007D008:
/* 8007D008 00079F68  7F C3 F3 78 */	mr r3, r30
/* 8007D00C 00079F6C  4B FF DC 41 */	bl OSRestoreInterrupts
/* 8007D010 00079F70  7F A3 EB 78 */	mr r3, r29
/* 8007D014 00079F74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8007D018 00079F78  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8007D01C 00079F7C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8007D020 00079F80  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8007D024 00079F84  38 21 00 18 */	addi r1, r1, 0x18
/* 8007D028 00079F88  7C 08 03 A6 */	mtlr r0
/* 8007D02C 00079F8C  4E 80 00 20 */	blr 

.global OSGetResetSwitchState
OSGetResetSwitchState:
/* 8007D030 00079F90  7C 08 02 A6 */	mflr r0
/* 8007D034 00079F94  90 01 00 04 */	stw r0, 4(r1)
/* 8007D038 00079F98  94 21 FF F8 */	stwu r1, -8(r1)
/* 8007D03C 00079F9C  4B FF FD 5D */	bl OSGetResetButtonState
/* 8007D040 00079FA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8007D044 00079FA4  38 21 00 08 */	addi r1, r1, 8
/* 8007D048 00079FA8  7C 08 03 A6 */	mtlr r0
/* 8007D04C 00079FAC  4E 80 00 20 */	blr 
