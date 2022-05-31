lbl_804879B0:
/* 804879B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804879B4  7C 08 02 A6 */	mflr r0
/* 804879B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804879BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804879C0  93 C1 00 08 */	stw r30, 8(r1)
/* 804879C4  7C 7E 1B 78 */	mr r30, r3
/* 804879C8  80 83 01 B0 */	lwz r4, 0x1b0(r3)
/* 804879CC  2C 04 00 0D */	cmpwi r4, 0xd
/* 804879D0  41 82 00 10 */	beq lbl_804879E0
/* 804879D4  38 7E 01 C8 */	addi r3, r30, 0x1c8
/* 804879D8  4B FF FF C5 */	bl aQMgr_actor_decide_fj_message_no
/* 804879DC  90 7E 01 AC */	stw r3, 0x1ac(r30)
lbl_804879E0:
/* 804879E0  83 FE 01 AC */	lwz r31, 0x1ac(r30)
/* 804879E4  2C 1F 00 0F */	cmpwi r31, 0xf
/* 804879E8  41 82 00 2C */	beq lbl_80487A14
/* 804879EC  2C 1F 00 00 */	cmpwi r31, 0
/* 804879F0  41 82 00 24 */	beq lbl_80487A14
/* 804879F4  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 804879F8  80 63 00 00 */	lwz r3, 0(r3)
/* 804879FC  4B F4 A5 05 */	bl mNpc_GetNpcLooks
/* 80487A00  7C 60 1B 78 */	mr r0, r3
/* 80487A04  7F E3 FB 78 */	mr r3, r31
/* 80487A08  7C 04 03 78 */	mr r4, r0
/* 80487A0C  4B FF FF 85 */	bl func_80487990
/* 80487A10  48 00 00 08 */	b lbl_80487A18
lbl_80487A14:
/* 80487A14  7F E3 FB 78 */	mr r3, r31
lbl_80487A18:
/* 80487A18  90 7E 01 A8 */	stw r3, 0x1a8(r30)
/* 80487A1C  38 60 00 0D */	li r3, 0xd
/* 80487A20  38 00 00 00 */	li r0, 0
/* 80487A24  90 7E 01 B0 */	stw r3, 0x1b0(r30)
/* 80487A28  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 80487A2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487A30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80487A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487A38  7C 08 03 A6 */	mtlr r0
/* 80487A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80487A40  4E 80 00 20 */	blr 
