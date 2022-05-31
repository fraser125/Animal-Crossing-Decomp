lbl_80590D00:
/* 80590D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590D04  7C 08 02 A6 */	mflr r0
/* 80590D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590D0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590D10  7C 7F 1B 78 */	mr r31, r3
/* 80590D14  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80590D18  28 00 00 FF */	cmplwi r0, 0xff
/* 80590D1C  40 82 00 54 */	bne lbl_80590D70
/* 80590D20  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80590D24  2C 00 00 16 */	cmpwi r0, 0x16
/* 80590D28  41 82 00 14 */	beq lbl_80590D3C
/* 80590D2C  40 80 00 38 */	bge lbl_80590D64
/* 80590D30  2C 00 00 08 */	cmpwi r0, 8
/* 80590D34  41 82 00 24 */	beq lbl_80590D58
/* 80590D38  48 00 00 2C */	b lbl_80590D64
lbl_80590D3C:
/* 80590D3C  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 80590D40  2C 04 FF FF */	cmpwi r4, -1
/* 80590D44  41 82 00 20 */	beq lbl_80590D64
/* 80590D48  4B FF FE 45 */	bl aGH0_setupAction
/* 80590D4C  7F E3 FB 78 */	mr r3, r31
/* 80590D50  4B FF FD FD */	bl func_80590B4C
/* 80590D54  48 00 00 10 */	b lbl_80590D64
lbl_80590D58:
/* 80590D58  A8 1F 09 A8 */	lha r0, 0x9a8(r31)
/* 80590D5C  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 80590D60  4B FF FD ED */	bl func_80590B4C
lbl_80590D64:
/* 80590D64  38 00 FF FF */	li r0, -1
/* 80590D68  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80590D6C  48 00 00 08 */	b lbl_80590D74
lbl_80590D70:
/* 80590D70  4B FF FF 61 */	bl aGH0_set_term
lbl_80590D74:
/* 80590D74  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 80590D78  2C 00 00 05 */	cmpwi r0, 5
/* 80590D7C  41 82 00 14 */	beq lbl_80590D90
/* 80590D80  40 80 00 30 */	bge lbl_80590DB0
/* 80590D84  2C 00 00 04 */	cmpwi r0, 4
/* 80590D88  40 80 00 18 */	bge lbl_80590DA0
/* 80590D8C  48 00 00 24 */	b lbl_80590DB0
lbl_80590D90:
/* 80590D90  3C 60 80 59 */	lis r3, aGH0_norm_talk_request@ha /* 0x80591108@ha */
/* 80590D94  38 03 11 08 */	addi r0, r3, aGH0_norm_talk_request@l /* 0x80591108@l */
/* 80590D98  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80590D9C  48 00 00 20 */	b lbl_80590DBC
lbl_80590DA0:
/* 80590DA0  3C 60 80 3C */	lis r3, none_proc1@ha /* 0x803BB54C@ha */
/* 80590DA4  38 03 B5 4C */	addi r0, r3, none_proc1@l /* 0x803BB54C@l */
/* 80590DA8  90 1F 09 64 */	stw r0, 0x964(r31)
/* 80590DAC  48 00 00 10 */	b lbl_80590DBC
lbl_80590DB0:
/* 80590DB0  3C 60 80 59 */	lis r3, aGH0_norm_talk_request@ha /* 0x80591108@ha */
/* 80590DB4  38 03 11 08 */	addi r0, r3, aGH0_norm_talk_request@l /* 0x80591108@l */
/* 80590DB8  90 1F 09 64 */	stw r0, 0x964(r31)
lbl_80590DBC:
/* 80590DBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80590DC4  7C 08 03 A6 */	mtlr r0
/* 80590DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80590DCC  4E 80 00 20 */	blr 
