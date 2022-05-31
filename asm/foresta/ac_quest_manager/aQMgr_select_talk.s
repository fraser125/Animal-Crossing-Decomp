lbl_804869A0:
/* 804869A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804869A4  7C 08 02 A6 */	mflr r0
/* 804869A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804869AC  39 61 00 20 */	addi r11, r1, 0x20
/* 804869B0  4B C1 45 25 */	bl func_8009AED4
/* 804869B4  7C 7D 1B 78 */	mr r29, r3
/* 804869B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804869BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804869C0  80 A3 01 78 */	lwz r5, 0x178(r3)
/* 804869C4  3C 84 00 02 */	addis r4, r4, 2
/* 804869C8  80 A5 00 00 */	lwz r5, 0(r5)
/* 804869CC  88 84 60 03 */	lbz r4, 0x6003(r4)
/* 804869D0  83 C5 01 7C */	lwz r30, 0x17c(r5)
/* 804869D4  3F E4 20 00 */	addis r31, r4, 0x2000
/* 804869D8  3B FF 00 12 */	addi r31, r31, 0x12
/* 804869DC  4B FF F5 85 */	bl aQMgr_actor_init_quest
/* 804869E0  38 7D 01 B8 */	addi r3, r29, 0x1b8
/* 804869E4  4B FF FB 71 */	bl aQMgr_clear_talk_wait_info
/* 804869E8  28 1E 00 00 */	cmplwi r30, 0
/* 804869EC  41 82 00 14 */	beq lbl_80486A00
/* 804869F0  7F C3 F3 78 */	mr r3, r30
/* 804869F4  4B F4 F3 09 */	bl mNpc_CheckIslandAnimal
/* 804869F8  2C 03 00 01 */	cmpwi r3, 1
/* 804869FC  41 82 00 20 */	beq lbl_80486A1C
lbl_80486A00:
/* 80486A00  4B F2 D1 09 */	bl mLd_PlayerManKindCheck
/* 80486A04  2C 03 00 00 */	cmpwi r3, 0
/* 80486A08  40 82 00 20 */	bne lbl_80486A28
/* 80486A0C  7F E3 FB 78 */	mr r3, r31
/* 80486A10  4B F1 40 09 */	bl mEv_CheckEvent
/* 80486A14  2C 03 00 01 */	cmpwi r3, 1
/* 80486A18  40 82 00 10 */	bne lbl_80486A28
lbl_80486A1C:
/* 80486A1C  38 00 00 00 */	li r0, 0
/* 80486A20  98 1D 09 5A */	stb r0, 0x95a(r29)
/* 80486A24  48 00 00 24 */	b lbl_80486A48
lbl_80486A28:
/* 80486A28  4B F1 42 0D */	bl mEv_CheckFirstJob
/* 80486A2C  2C 03 00 01 */	cmpwi r3, 1
/* 80486A30  40 82 00 10 */	bne lbl_80486A40
/* 80486A34  38 00 00 01 */	li r0, 1
/* 80486A38  98 1D 09 5A */	stb r0, 0x95a(r29)
/* 80486A3C  48 00 00 0C */	b lbl_80486A48
lbl_80486A40:
/* 80486A40  38 00 00 00 */	li r0, 0
/* 80486A44  98 1D 09 5A */	stb r0, 0x95a(r29)
lbl_80486A48:
/* 80486A48  80 BD 01 80 */	lwz r5, 0x180(r29)
/* 80486A4C  38 00 00 02 */	li r0, 2
/* 80486A50  7F A3 EB 78 */	mr r3, r29
/* 80486A54  38 80 00 08 */	li r4, 8
/* 80486A58  98 05 00 00 */	stb r0, 0(r5)
/* 80486A5C  81 9D 09 48 */	lwz r12, 0x948(r29)
/* 80486A60  7D 89 03 A6 */	mtctr r12
/* 80486A64  4E 80 04 21 */	bctrl 
/* 80486A68  39 61 00 20 */	addi r11, r1, 0x20
/* 80486A6C  4B C1 44 B5 */	bl func_8009AF20
/* 80486A70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80486A74  7C 08 03 A6 */	mtlr r0
/* 80486A78  38 21 00 20 */	addi r1, r1, 0x20
/* 80486A7C  4E 80 00 20 */	blr 
