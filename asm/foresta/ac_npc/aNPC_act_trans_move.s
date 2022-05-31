lbl_80533E04:
/* 80533E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533E08  7C 08 02 A6 */	mflr r0
/* 80533E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533E14  7C 7F 1B 78 */	mr r31, r3
/* 80533E18  88 63 09 35 */	lbz r3, 0x935(r3)
/* 80533E1C  28 03 00 00 */	cmplwi r3, 0
/* 80533E20  41 82 00 0C */	beq lbl_80533E2C
/* 80533E24  38 03 FF FF */	addi r0, r3, -1
/* 80533E28  98 1F 09 35 */	stb r0, 0x935(r31)
lbl_80533E2C:
/* 80533E2C  7F E3 FB 78 */	mr r3, r31
/* 80533E30  4B FF D0 D1 */	bl aNPC_act_search_move
/* 80533E34  2C 03 00 00 */	cmpwi r3, 0
/* 80533E38  41 82 00 1C */	beq lbl_80533E54
/* 80533E3C  88 1F 09 58 */	lbz r0, 0x958(r31)
/* 80533E40  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80533E44  40 82 00 10 */	bne lbl_80533E54
/* 80533E48  88 1F 09 35 */	lbz r0, 0x935(r31)
/* 80533E4C  28 00 00 00 */	cmplwi r0, 0
/* 80533E50  40 82 00 18 */	bne lbl_80533E68
lbl_80533E54:
/* 80533E54  7F E3 FB 78 */	mr r3, r31
/* 80533E58  4B FF FF 89 */	bl aNPC_act_trans_set_arg_data
/* 80533E5C  7F E3 FB 78 */	mr r3, r31
/* 80533E60  38 80 00 01 */	li r4, 1
/* 80533E64  4B FF FE A1 */	bl func_80533D04
lbl_80533E68:
/* 80533E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533E6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533E70  7C 08 03 A6 */	mtlr r0
/* 80533E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80533E78  4E 80 00 20 */	blr 
