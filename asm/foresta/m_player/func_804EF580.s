lbl_804EF580:
/* 804EF580  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804EF584  7C 08 02 A6 */	mflr r0
/* 804EF588  90 01 00 34 */	stw r0, 0x34(r1)
/* 804EF58C  39 61 00 30 */	addi r11, r1, 0x30
/* 804EF590  4B BA B9 3D */	bl func_8009AECC
/* 804EF594  7C 9C 23 78 */	mr r28, r4
/* 804EF598  7C 7B 1B 78 */	mr r27, r3
/* 804EF59C  7C BD 2B 78 */	mr r29, r5
/* 804EF5A0  38 80 00 24 */	li r4, 0x24
/* 804EF5A4  4B FE AE B5 */	bl Player_actor_check_request_main_able
/* 804EF5A8  2C 03 00 00 */	cmpwi r3, 0
/* 804EF5AC  41 82 00 A4 */	beq lbl_804EF650
/* 804EF5B0  7F 63 DB 78 */	mr r3, r27
/* 804EF5B4  4B EE A0 8D */	bl get_player_actor_withoutCheck
/* 804EF5B8  7C 7F 1B 78 */	mr r31, r3
/* 804EF5BC  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804EF5C0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804EF5C4  90 61 00 08 */	stw r3, 8(r1)
/* 804EF5C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804EF5CC  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804EF5D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804EF5D4  AB DF 00 DE */	lha r30, 0xde(r31)
/* 804EF5D8  7F C3 F3 78 */	mr r3, r30
/* 804EF5DC  4B EC B5 15 */	bl sin_s
/* 804EF5E0  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804EF5E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 804EF5E8  38 83 6A 2C */	addi r4, r3, lit_1374@l /* 0x80646A2C@l */
/* 804EF5EC  7F C3 F3 78 */	mr r3, r30
/* 804EF5F0  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EF5F4  EC 22 00 72 */	fmuls f1, f2, f1
/* 804EF5F8  EC 00 08 2A */	fadds f0, f0, f1
/* 804EF5FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 804EF600  4B EC B4 9D */	bl cos_s
/* 804EF604  3C 60 80 64 */	lis r3, lit_1374@ha /* 0x80646A2C@ha */
/* 804EF608  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804EF60C  38 83 6A 2C */	addi r4, r3, lit_1374@l /* 0x80646A2C@l */
/* 804EF610  7F 63 DB 78 */	mr r3, r27
/* 804EF614  C0 44 00 00 */	lfs f2, 0(r4)
/* 804EF618  38 81 00 08 */	addi r4, r1, 8
/* 804EF61C  EC 22 00 72 */	fmuls f1, f2, f1
/* 804EF620  EC 00 08 2A */	fadds f0, f0, f1
/* 804EF624  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804EF628  4B FE B7 19 */	bl Player_actor_SearchPosition_npc_forStand
/* 804EF62C  2C 03 00 00 */	cmpwi r3, 0
/* 804EF630  40 82 00 20 */	bne lbl_804EF650
/* 804EF634  93 9F 0D 60 */	stw r28, 0xd60(r31)
/* 804EF638  7F 63 DB 78 */	mr r3, r27
/* 804EF63C  7F A5 EB 78 */	mr r5, r29
/* 804EF640  38 80 00 24 */	li r4, 0x24
/* 804EF644  4B FE 59 D1 */	bl Player_actor_request_main_index
/* 804EF648  38 60 00 01 */	li r3, 1
/* 804EF64C  48 00 00 08 */	b lbl_804EF654
lbl_804EF650:
/* 804EF650  38 60 00 00 */	li r3, 0
lbl_804EF654:
/* 804EF654  39 61 00 30 */	addi r11, r1, 0x30
/* 804EF658  4B BA B8 C1 */	bl func_8009AF18
/* 804EF65C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804EF660  7C 08 03 A6 */	mtlr r0
/* 804EF664  38 21 00 30 */	addi r1, r1, 0x30
/* 804EF668  4E 80 00 20 */	blr 
