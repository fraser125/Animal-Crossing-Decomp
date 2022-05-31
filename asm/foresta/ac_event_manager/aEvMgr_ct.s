lbl_80419994:
/* 80419994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80419998  7C 08 02 A6 */	mflr r0
/* 8041999C  3C 80 81 1D */	lis r4, data_811CB830@ha /* 0x811CB830@ha */
/* 804199A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804199A4  38 00 00 00 */	li r0, 0
/* 804199A8  38 84 B8 30 */	addi r4, r4, data_811CB830@l /* 0x811CB830@l */
/* 804199AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804199B0  7C 7F 1B 78 */	mr r31, r3
/* 804199B4  90 04 01 2C */	stw r0, 0x12c(r4)
/* 804199B8  90 04 01 30 */	stw r0, 0x130(r4)
/* 804199BC  90 04 01 34 */	stw r0, 0x134(r4)
/* 804199C0  90 04 01 38 */	stw r0, 0x138(r4)
/* 804199C4  4B FF FF B9 */	bl aEvMgr_actor_player_pos_init
/* 804199C8  38 7F 01 E8 */	addi r3, r31, 0x1e8
/* 804199CC  4B FF FE D1 */	bl aEvMgr_actor_init_field_info
/* 804199D0  7F E3 FB 78 */	mr r3, r31
/* 804199D4  48 00 8E 2D */	bl schedule_init
/* 804199D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804199DC  3C 60 80 42 */	lis r3, title_fade@ha /* 0x8041DA7C@ha */
/* 804199E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804199E4  38 BF 02 58 */	addi r5, r31, 0x258
/* 804199E8  3C 84 00 02 */	addis r4, r4, 2
/* 804199EC  38 03 DA 7C */	addi r0, r3, title_fade@l /* 0x8041DA7C@l */
/* 804199F0  90 A4 60 FC */	stw r5, 0x60fc(r4)
/* 804199F4  93 FF 02 58 */	stw r31, 0x258(r31)
/* 804199F8  80 64 60 FC */	lwz r3, 0x60fc(r4)
/* 804199FC  90 03 00 04 */	stw r0, 4(r3)
/* 80419A00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80419A04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80419A08  7C 08 03 A6 */	mtlr r0
/* 80419A0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80419A10  4E 80 00 20 */	blr 
