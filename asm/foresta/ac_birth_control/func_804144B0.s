lbl_804144B0:
/* 804144B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804144B4  7C 08 02 A6 */	mflr r0
/* 804144B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804144BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804144C0  4B C8 6A 0D */	bl func_8009AECC
/* 804144C4  54 80 18 38 */	slwi r0, r4, 3
/* 804144C8  8B E3 00 F4 */	lbz r31, 0xf4(r3)
/* 804144CC  7C 83 02 14 */	add r4, r3, r0
/* 804144D0  8B C3 00 F5 */	lbz r30, 0xf5(r3)
/* 804144D4  8B A3 00 E4 */	lbz r29, 0xe4(r3)
/* 804144D8  8B 83 00 E5 */	lbz r28, 0xe5(r3)
/* 804144DC  83 64 1D B0 */	lwz r27, 0x1db0(r4)
lbl_804144E0:
/* 804144E0  28 1B 00 00 */	cmplwi r27, 0
/* 804144E4  41 82 00 64 */	beq lbl_80414548
/* 804144E8  88 7B 00 08 */	lbz r3, 8(r27)
/* 804144EC  88 9B 00 09 */	lbz r4, 9(r27)
/* 804144F0  7C 60 07 75 */	extsb. r0, r3
/* 804144F4  41 80 00 4C */	blt lbl_80414540
/* 804144F8  7C 63 07 74 */	extsb r3, r3
/* 804144FC  7F E0 07 74 */	extsb r0, r31
/* 80414500  7C 03 00 00 */	cmpw r3, r0
/* 80414504  41 82 00 3C */	beq lbl_80414540
/* 80414508  7F A0 07 74 */	extsb r0, r29
/* 8041450C  7C 03 00 00 */	cmpw r3, r0
/* 80414510  41 82 00 30 */	beq lbl_80414540
/* 80414514  7C 80 07 75 */	extsb. r0, r4
/* 80414518  41 80 00 28 */	blt lbl_80414540
/* 8041451C  7C 83 07 74 */	extsb r3, r4
/* 80414520  7F C0 07 74 */	extsb r0, r30
/* 80414524  7C 03 00 00 */	cmpw r3, r0
/* 80414528  41 82 00 18 */	beq lbl_80414540
/* 8041452C  7F 80 07 74 */	extsb r0, r28
/* 80414530  7C 03 00 00 */	cmpw r3, r0
/* 80414534  41 82 00 0C */	beq lbl_80414540
/* 80414538  7F 63 DB 78 */	mr r3, r27
/* 8041453C  4B F5 FF 05 */	bl Actor_delete
lbl_80414540:
/* 80414540  83 7B 01 58 */	lwz r27, 0x158(r27)
/* 80414544  4B FF FF 9C */	b lbl_804144E0
lbl_80414548:
/* 80414548  39 61 00 20 */	addi r11, r1, 0x20
/* 8041454C  4B C8 69 CD */	bl func_8009AF18
/* 80414550  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80414554  7C 08 03 A6 */	mtlr r0
/* 80414558  38 21 00 20 */	addi r1, r1, 0x20
/* 8041455C  4E 80 00 20 */	blr 
