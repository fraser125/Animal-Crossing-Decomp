.include "macros.inc"

.section .text

.org 0x80095D24

.global __GXSetDirtyState
__GXSetDirtyState:
/* 80095D24 00092C84  7C 08 02 A6 */	mflr r0
/* 80095D28 00092C88  90 01 00 04 */	stw r0, 4(r1)
/* 80095D2C 00092C8C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80095D30 00092C90  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D34 00092C94  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D38 00092C98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80095D3C 00092C9C  41 82 00 08 */	beq lbl_80095D44
/* 80095D40 00092CA0  48 00 20 D5 */	bl __GXSetSUTexRegs
lbl_80095D44:
/* 80095D44 00092CA4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D48 00092CA8  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D4C 00092CAC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80095D50 00092CB0  41 82 00 08 */	beq lbl_80095D58
/* 80095D54 00092CB4  48 00 29 F9 */	bl __GXUpdateBPMask
lbl_80095D58:
/* 80095D58 00092CB8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D5C 00092CBC  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D60 00092CC0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80095D64 00092CC4  41 82 00 08 */	beq lbl_80095D6C
/* 80095D68 00092CC8  48 00 03 79 */	bl __GXSetGenMode
lbl_80095D6C:
/* 80095D6C 00092CCC  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D70 00092CD0  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D74 00092CD4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80095D78 00092CD8  41 82 00 08 */	beq lbl_80095D80
/* 80095D7C 00092CDC  4B FF F0 4D */	bl __GXSetVCD
lbl_80095D80:
/* 80095D80 00092CE0  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D84 00092CE4  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D88 00092CE8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80095D8C 00092CEC  41 82 00 08 */	beq lbl_80095D94
/* 80095D90 00092CF0  4B FF F5 59 */	bl __GXSetVAT
lbl_80095D94:
/* 80095D94 00092CF4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095D98 00092CF8  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095D9C 00092CFC  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 80095DA0 00092D00  41 82 00 08 */	beq lbl_80095DA8
/* 80095DA4 00092D04  4B FF F0 79 */	bl __GXCalculateVLim
lbl_80095DA8:
/* 80095DA8 00092D08  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095DAC 00092D0C  38 00 00 00 */	li r0, 0
/* 80095DB0 00092D10  90 03 04 F4 */	stw r0, 0x4f4(r3)
/* 80095DB4 00092D14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80095DB8 00092D18  38 21 00 08 */	addi r1, r1, 8
/* 80095DBC 00092D1C  7C 08 03 A6 */	mtlr r0
/* 80095DC0 00092D20  4E 80 00 20 */	blr 

.global GXBegin
GXBegin:
/* 80095DC4 00092D24  7C 08 02 A6 */	mflr r0
/* 80095DC8 00092D28  90 01 00 04 */	stw r0, 4(r1)
/* 80095DCC 00092D2C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80095DD0 00092D30  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80095DD4 00092D34  3B E5 00 00 */	addi r31, r5, 0
/* 80095DD8 00092D38  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80095DDC 00092D3C  3B C4 00 00 */	addi r30, r4, 0
/* 80095DE0 00092D40  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80095DE4 00092D44  3B A3 00 00 */	addi r29, r3, 0
/* 80095DE8 00092D48  80 CD 86 78 */	lwz r6, gx-_SDA_BASE_(r13)
/* 80095DEC 00092D4C  80 06 04 F4 */	lwz r0, 0x4f4(r6)
/* 80095DF0 00092D50  28 00 00 00 */	cmplwi r0, 0
/* 80095DF4 00092D54  41 82 00 80 */	beq lbl_80095E74
/* 80095DF8 00092D58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80095DFC 00092D5C  41 82 00 08 */	beq lbl_80095E04
/* 80095E00 00092D60  48 00 20 15 */	bl __GXSetSUTexRegs
lbl_80095E04:
/* 80095E04 00092D64  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E08 00092D68  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095E0C 00092D6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80095E10 00092D70  41 82 00 08 */	beq lbl_80095E18
/* 80095E14 00092D74  48 00 29 39 */	bl __GXUpdateBPMask
lbl_80095E18:
/* 80095E18 00092D78  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E1C 00092D7C  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095E20 00092D80  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80095E24 00092D84  41 82 00 08 */	beq lbl_80095E2C
/* 80095E28 00092D88  48 00 02 B9 */	bl __GXSetGenMode
lbl_80095E2C:
/* 80095E2C 00092D8C  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E30 00092D90  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095E34 00092D94  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80095E38 00092D98  41 82 00 08 */	beq lbl_80095E40
/* 80095E3C 00092D9C  4B FF EF 8D */	bl __GXSetVCD
lbl_80095E40:
/* 80095E40 00092DA0  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E44 00092DA4  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095E48 00092DA8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80095E4C 00092DAC  41 82 00 08 */	beq lbl_80095E54
/* 80095E50 00092DB0  4B FF F4 99 */	bl __GXSetVAT
lbl_80095E54:
/* 80095E54 00092DB4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E58 00092DB8  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80095E5C 00092DBC  54 00 06 F9 */	rlwinm. r0, r0, 0, 0x1b, 0x1c
/* 80095E60 00092DC0  41 82 00 08 */	beq lbl_80095E68
/* 80095E64 00092DC4  4B FF EF B9 */	bl __GXCalculateVLim
lbl_80095E68:
/* 80095E68 00092DC8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E6C 00092DCC  38 00 00 00 */	li r0, 0
/* 80095E70 00092DD0  90 03 04 F4 */	stw r0, 0x4f4(r3)
lbl_80095E74:
/* 80095E74 00092DD4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095E78 00092DD8  80 03 00 00 */	lwz r0, 0(r3)
/* 80095E7C 00092DDC  28 00 00 00 */	cmplwi r0, 0
/* 80095E80 00092DE0  40 82 00 08 */	bne lbl_80095E88
/* 80095E84 00092DE4  48 00 00 31 */	bl __GXSendFlushPrim
lbl_80095E88:
/* 80095E88 00092DE8  7F C0 EB 78 */	or r0, r30, r29
/* 80095E8C 00092DEC  3C 60 CC 01 */	lis r3, 0xCC008000@ha
/* 80095E90 00092DF0  98 03 80 00 */	stb r0, 0xCC008000@l(r3)
/* 80095E94 00092DF4  B3 E3 80 00 */	sth r31, -0x8000(r3)
/* 80095E98 00092DF8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80095E9C 00092DFC  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80095EA0 00092E00  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80095EA4 00092E04  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80095EA8 00092E08  38 21 00 28 */	addi r1, r1, 0x28
/* 80095EAC 00092E0C  7C 08 03 A6 */	mtlr r0
/* 80095EB0 00092E10  4E 80 00 20 */	blr 

.global __GXSendFlushPrim
__GXSendFlushPrim:
/* 80095EB4 00092E14  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095EB8 00092E18  38 00 00 98 */	li r0, 0x98
/* 80095EBC 00092E1C  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80095EC0 00092E20  A0 C3 00 04 */	lhz r6, 4(r3)
/* 80095EC4 00092E24  38 80 00 00 */	li r4, 0
/* 80095EC8 00092E28  A0 63 00 06 */	lhz r3, 6(r3)
/* 80095ECC 00092E2C  7C E6 19 D6 */	mullw r7, r6, r3
/* 80095ED0 00092E30  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 80095ED4 00092E34  B0 C5 80 00 */	sth r6, -0x8000(r5)
/* 80095ED8 00092E38  38 67 00 03 */	addi r3, r7, 3
/* 80095EDC 00092E3C  28 07 00 00 */	cmplwi r7, 0
/* 80095EE0 00092E40  54 63 F0 BE */	srwi r3, r3, 2
/* 80095EE4 00092E44  40 81 00 48 */	ble lbl_80095F2C
/* 80095EE8 00092E48  54 60 E8 FF */	rlwinm. r0, r3, 0x1d, 3, 0x1f
/* 80095EEC 00092E4C  7C 09 03 A6 */	mtctr r0
/* 80095EF0 00092E50  41 82 00 30 */	beq lbl_80095F20
lbl_80095EF4:
/* 80095EF4 00092E54  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095EF8 00092E58  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095EFC 00092E5C  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F00 00092E60  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F04 00092E64  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F08 00092E68  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F0C 00092E6C  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F10 00092E70  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F14 00092E74  42 00 FF E0 */	bdnz lbl_80095EF4
/* 80095F18 00092E78  70 63 00 07 */	andi. r3, r3, 7
/* 80095F1C 00092E7C  41 82 00 10 */	beq lbl_80095F2C
lbl_80095F20:
/* 80095F20 00092E80  7C 69 03 A6 */	mtctr r3
lbl_80095F24:
/* 80095F24 00092E84  90 85 80 00 */	stw r4, -0x8000(r5)
/* 80095F28 00092E88  42 00 FF FC */	bdnz lbl_80095F24
lbl_80095F2C:
/* 80095F2C 00092E8C  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095F30 00092E90  38 00 00 01 */	li r0, 1
/* 80095F34 00092E94  B0 03 00 02 */	sth r0, 2(r3)
/* 80095F38 00092E98  4E 80 00 20 */	blr 

.global GXSetLineWidth
GXSetLineWidth:
/* 80095F3C 00092E9C  80 AD 86 78 */	lwz r5, gx-_SDA_BASE_(r13)
/* 80095F40 00092EA0  54 86 80 1E */	slwi r6, r4, 0x10
/* 80095F44 00092EA4  38 80 00 61 */	li r4, 0x61
/* 80095F48 00092EA8  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 80095F4C 00092EAC  38 E5 00 7C */	addi r7, r5, 0x7c
/* 80095F50 00092EB0  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80095F54 00092EB4  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 80095F58 00092EB8  50 60 06 3E */	rlwimi r0, r3, 0, 0x18, 0x1f
/* 80095F5C 00092EBC  90 07 00 00 */	stw r0, 0(r7)
/* 80095F60 00092EC0  38 00 00 00 */	li r0, 0
/* 80095F64 00092EC4  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095F68 00092EC8  38 E3 00 7C */	addi r7, r3, 0x7c
/* 80095F6C 00092ECC  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 80095F70 00092ED0  54 63 04 18 */	rlwinm r3, r3, 0, 0x10, 0xc
/* 80095F74 00092ED4  7C 63 33 78 */	or r3, r3, r6
/* 80095F78 00092ED8  90 67 00 00 */	stw r3, 0(r7)
/* 80095F7C 00092EDC  98 85 80 00 */	stb r4, 0xCC008000@l(r5)
/* 80095F80 00092EE0  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80095F84 00092EE4  80 64 00 7C */	lwz r3, 0x7c(r4)
/* 80095F88 00092EE8  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80095F8C 00092EEC  B0 04 00 02 */	sth r0, 2(r4)
/* 80095F90 00092EF0  4E 80 00 20 */	blr 

.global GXSetPointSize
GXSetPointSize:
/* 80095F94 00092EF4  80 AD 86 78 */	lwz r5, gx-_SDA_BASE_(r13)
/* 80095F98 00092EF8  54 86 98 18 */	slwi r6, r4, 0x13
/* 80095F9C 00092EFC  84 05 00 7C */	lwzu r0, 0x7c(r5)
/* 80095FA0 00092F00  38 80 00 61 */	li r4, 0x61
/* 80095FA4 00092F04  54 00 06 1E */	rlwinm r0, r0, 0, 0x18, 0xf
/* 80095FA8 00092F08  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 80095FAC 00092F0C  90 05 00 00 */	stw r0, 0(r5)
/* 80095FB0 00092F10  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80095FB4 00092F14  38 00 00 00 */	li r0, 0
/* 80095FB8 00092F18  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 80095FBC 00092F1C  38 E3 00 7C */	addi r7, r3, 0x7c
/* 80095FC0 00092F20  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 80095FC4 00092F24  54 63 03 52 */	rlwinm r3, r3, 0, 0xd, 9
/* 80095FC8 00092F28  7C 63 33 78 */	or r3, r3, r6
/* 80095FCC 00092F2C  90 67 00 00 */	stw r3, 0(r7)
/* 80095FD0 00092F30  98 85 80 00 */	stb r4, 0xCC008000@l(r5)
/* 80095FD4 00092F34  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80095FD8 00092F38  80 64 00 7C */	lwz r3, 0x7c(r4)
/* 80095FDC 00092F3C  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80095FE0 00092F40  B0 04 00 02 */	sth r0, 2(r4)
/* 80095FE4 00092F44  4E 80 00 20 */	blr 

.global GXEnableTexOffsets
GXEnableTexOffsets:
/* 80095FE8 00092F48  80 0D 86 78 */	lwz r0, gx-_SDA_BASE_(r13)
/* 80095FEC 00092F4C  54 67 10 3A */	slwi r7, r3, 2
/* 80095FF0 00092F50  7C C0 3A 14 */	add r6, r0, r7
/* 80095FF4 00092F54  80 66 00 B8 */	lwz r3, 0xb8(r6)
/* 80095FF8 00092F58  54 80 91 9A */	rlwinm r0, r4, 0x12, 6, 0xd
/* 80095FFC 00092F5C  54 A4 99 58 */	rlwinm r4, r5, 0x13, 5, 0xc
/* 80096000 00092F60  54 63 03 98 */	rlwinm r3, r3, 0, 0xe, 0xc
/* 80096004 00092F64  7C 60 03 78 */	or r0, r3, r0
/* 80096008 00092F68  90 06 00 B8 */	stw r0, 0xb8(r6)
/* 8009600C 00092F6C  38 60 00 61 */	li r3, 0x61
/* 80096010 00092F70  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 80096014 00092F74  80 CD 86 78 */	lwz r6, gx-_SDA_BASE_(r13)
/* 80096018 00092F78  38 00 00 00 */	li r0, 0
/* 8009601C 00092F7C  7D 06 3A 14 */	add r8, r6, r7
/* 80096020 00092F80  80 C8 00 B8 */	lwz r6, 0xb8(r8)
/* 80096024 00092F84  54 C6 03 56 */	rlwinm r6, r6, 0, 0xd, 0xb
/* 80096028 00092F88  7C C4 23 78 */	or r4, r6, r4
/* 8009602C 00092F8C  90 88 00 B8 */	stw r4, 0xb8(r8)
/* 80096030 00092F90  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80096034 00092F94  98 65 80 00 */	stb r3, 0xCC008000@l(r5)
/* 80096038 00092F98  7C 64 3A 14 */	add r3, r4, r7
/* 8009603C 00092F9C  80 63 00 B8 */	lwz r3, 0xb8(r3)
/* 80096040 00092FA0  90 65 80 00 */	stw r3, -0x8000(r5)
/* 80096044 00092FA4  B0 04 00 02 */	sth r0, 2(r4)
/* 80096048 00092FA8  4E 80 00 20 */	blr 

.global GXSetCullMode
GXSetCullMode:
/* 8009604C 00092FAC  2C 03 00 02 */	cmpwi r3, 2
/* 80096050 00092FB0  41 82 00 1C */	beq lbl_8009606C
/* 80096054 00092FB4  40 80 00 1C */	bge lbl_80096070
/* 80096058 00092FB8  2C 03 00 01 */	cmpwi r3, 1
/* 8009605C 00092FBC  40 80 00 08 */	bge lbl_80096064
/* 80096060 00092FC0  48 00 00 10 */	b lbl_80096070
lbl_80096064:
/* 80096064 00092FC4  38 60 00 02 */	li r3, 2
/* 80096068 00092FC8  48 00 00 08 */	b lbl_80096070
lbl_8009606C:
/* 8009606C 00092FCC  38 60 00 01 */	li r3, 1
lbl_80096070:
/* 80096070 00092FD0  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 80096074 00092FD4  54 60 70 22 */	slwi r0, r3, 0xe
/* 80096078 00092FD8  84 64 02 04 */	lwzu r3, 0x204(r4)
/* 8009607C 00092FDC  54 63 04 9E */	rlwinm r3, r3, 0, 0x12, 0xf
/* 80096080 00092FE0  7C 60 03 78 */	or r0, r3, r0
/* 80096084 00092FE4  90 04 00 00 */	stw r0, 0(r4)
/* 80096088 00092FE8  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 8009608C 00092FEC  80 03 04 F4 */	lwz r0, 0x4f4(r3)
/* 80096090 00092FF0  60 00 00 04 */	ori r0, r0, 4
/* 80096094 00092FF4  90 03 04 F4 */	stw r0, 0x4f4(r3)
/* 80096098 00092FF8  4E 80 00 20 */	blr 

.global GXSetCoPlanar
GXSetCoPlanar:
/* 8009609C 00092FFC  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 800960A0 00093000  54 60 99 58 */	rlwinm r0, r3, 0x13, 5, 0xc
/* 800960A4 00093004  38 A0 00 61 */	li r5, 0x61
/* 800960A8 00093008  80 64 02 04 */	lwz r3, 0x204(r4)
/* 800960AC 0009300C  38 C4 02 04 */	addi r6, r4, 0x204
/* 800960B0 00093010  3C 80 CC 01 */	lis r4, 0xCC008000@ha
/* 800960B4 00093014  54 63 03 56 */	rlwinm r3, r3, 0, 0xd, 0xb
/* 800960B8 00093018  7C 60 03 78 */	or r0, r3, r0
/* 800960BC 0009301C  90 06 00 00 */	stw r0, 0(r6)
/* 800960C0 00093020  3C 00 FE 08 */	lis r0, 0xfe08
/* 800960C4 00093024  98 A4 80 00 */	stb r5, 0xCC008000@l(r4)
/* 800960C8 00093028  80 6D 86 78 */	lwz r3, gx-_SDA_BASE_(r13)
/* 800960CC 0009302C  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800960D0 00093030  98 A4 80 00 */	stb r5, -0x8000(r4)
/* 800960D4 00093034  80 03 02 04 */	lwz r0, 0x204(r3)
/* 800960D8 00093038  90 04 80 00 */	stw r0, -0x8000(r4)
/* 800960DC 0009303C  4E 80 00 20 */	blr 

.global __GXSetGenMode
__GXSetGenMode:
/* 800960E0 00093040  38 00 00 61 */	li r0, 0x61
/* 800960E4 00093044  80 8D 86 78 */	lwz r4, gx-_SDA_BASE_(r13)
/* 800960E8 00093048  3C A0 CC 01 */	lis r5, 0xCC008000@ha
/* 800960EC 0009304C  98 05 80 00 */	stb r0, 0xCC008000@l(r5)
/* 800960F0 00093050  38 00 00 00 */	li r0, 0
/* 800960F4 00093054  80 64 02 04 */	lwz r3, 0x204(r4)
/* 800960F8 00093058  90 65 80 00 */	stw r3, -0x8000(r5)
/* 800960FC 0009305C  B0 04 00 02 */	sth r0, 2(r4)
/* 80096100 00093060  4E 80 00 20 */	blr 
