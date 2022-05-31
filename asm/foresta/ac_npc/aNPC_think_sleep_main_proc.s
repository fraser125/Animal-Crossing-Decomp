lbl_80537B50:
/* 80537B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537B54  7C 08 02 A6 */	mflr r0
/* 80537B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537B60  7C 7F 1B 78 */	mr r31, r3
/* 80537B64  4B FF E9 71 */	bl aNPC_think_chk_interrupt_proc
/* 80537B68  2C 03 00 00 */	cmpwi r3, 0
/* 80537B6C  40 82 00 7C */	bne lbl_80537BE8
/* 80537B70  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80537B74  28 00 00 FF */	cmplwi r0, 0xff
/* 80537B78  40 82 00 70 */	bne lbl_80537BE8
/* 80537B7C  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80537B80  2C 00 00 0B */	cmpwi r0, 0xb
/* 80537B84  41 82 00 14 */	beq lbl_80537B98
/* 80537B88  40 80 00 1C */	bge lbl_80537BA4
/* 80537B8C  2C 00 00 08 */	cmpwi r0, 8
/* 80537B90  41 82 00 08 */	beq lbl_80537B98
/* 80537B94  48 00 00 10 */	b lbl_80537BA4
lbl_80537B98:
/* 80537B98  7F E3 FB 78 */	mr r3, r31
/* 80537B9C  4B FF FF 65 */	bl func_80537B00
/* 80537BA0  48 00 00 48 */	b lbl_80537BE8
lbl_80537BA4:
/* 80537BA4  7F E3 FB 78 */	mr r3, r31
/* 80537BA8  4B FF 4C 99 */	bl func_8052C840
/* 80537BAC  2C 03 00 09 */	cmpwi r3, 9
/* 80537BB0  40 80 00 0C */	bge lbl_80537BBC
/* 80537BB4  2C 03 00 07 */	cmpwi r3, 7
/* 80537BB8  40 80 00 30 */	bge lbl_80537BE8
lbl_80537BBC:
/* 80537BBC  7F E3 FB 78 */	mr r3, r31
/* 80537BC0  38 80 00 04 */	li r4, 4
/* 80537BC4  38 A0 FF FF */	li r5, -1
/* 80537BC8  4B FF 91 05 */	bl aNPC_set_feel_info
/* 80537BCC  3C 80 80 6A */	lis r4, data_806A1400@ha /* 0x806A1400@ha */
/* 80537BD0  7F E3 FB 78 */	mr r3, r31
/* 80537BD4  38 E4 14 00 */	addi r7, r4, data_806A1400@l /* 0x806A1400@l */
/* 80537BD8  38 A0 00 00 */	li r5, 0
/* 80537BDC  38 80 00 04 */	li r4, 4
/* 80537BE0  38 C0 00 00 */	li r6, 0
/* 80537BE4  4B FF 9A 19 */	bl aNPC_set_request_act
lbl_80537BE8:
/* 80537BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537BEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537BF0  7C 08 03 A6 */	mtlr r0
/* 80537BF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80537BF8  4E 80 00 20 */	blr 
