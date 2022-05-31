lbl_80532630:
/* 80532630  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80532634  7C 08 02 A6 */	mflr r0
/* 80532638  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053263C  39 61 00 30 */	addi r11, r1, 0x30
/* 80532640  4B B6 88 8D */	bl func_8009AECC
/* 80532644  7C 9C 23 78 */	mr r28, r4
/* 80532648  7C 7B 1B 78 */	mr r27, r3
/* 8053264C  83 A4 01 7C */	lwz r29, 0x17c(r4)
/* 80532650  83 C3 01 7C */	lwz r30, 0x17c(r3)
/* 80532654  88 7D 00 0D */	lbz r3, 0xd(r29)
/* 80532658  4B E9 F9 11 */	bl mNpc_GetLooks2Sex
/* 8053265C  7C 7F 1B 78 */	mr r31, r3
/* 80532660  88 7E 00 0D */	lbz r3, 0xd(r30)
/* 80532664  4B E9 F9 05 */	bl mNpc_GetLooks2Sex
/* 80532668  7C 03 F8 00 */	cmpw r3, r31
/* 8053266C  40 82 00 A0 */	bne lbl_8053270C
/* 80532670  38 7E 08 9D */	addi r3, r30, 0x89d
/* 80532674  38 9D 08 9D */	addi r4, r29, 0x89d
/* 80532678  38 A0 00 0A */	li r5, 0xa
/* 8053267C  4B E8 83 E9 */	bl mem_cmp
/* 80532680  2C 03 00 00 */	cmpwi r3, 0
/* 80532684  40 82 00 18 */	bne lbl_8053269C
/* 80532688  38 7D 08 9D */	addi r3, r29, 0x89d
/* 8053268C  38 9E 08 9D */	addi r4, r30, 0x89d
/* 80532690  38 A0 00 0A */	li r5, 0xa
/* 80532694  4B E8 83 91 */	bl func_803BAA24
/* 80532698  48 00 00 74 */	b lbl_8053270C
lbl_8053269C:
/* 8053269C  7F 63 DB 78 */	mr r3, r27
/* 805326A0  7F 84 E3 78 */	mr r4, r28
/* 805326A4  4B FF FA F5 */	bl aNPC_make_aroundNpcInfoList
/* 805326A8  38 61 00 08 */	addi r3, r1, 8
/* 805326AC  38 9E 08 9D */	addi r4, r30, 0x89d
/* 805326B0  38 A0 00 0A */	li r5, 0xa
/* 805326B4  4B E8 83 71 */	bl func_803BAA24
/* 805326B8  3C 60 81 1D */	lis r3, aNPC_aroundNpcInfoList@ha /* 0x811D397C@ha */
/* 805326BC  3B C0 00 00 */	li r30, 0
/* 805326C0  3B E3 39 7C */	addi r31, r3, aNPC_aroundNpcInfoList@l /* 0x811D397C@l */
/* 805326C4  3B BF 00 04 */	addi r29, r31, 4
/* 805326C8  48 00 00 38 */	b lbl_80532700
lbl_805326CC:
/* 805326CC  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 805326D0  38 81 00 08 */	addi r4, r1, 8
/* 805326D4  38 A0 00 0A */	li r5, 0xa
/* 805326D8  4B E8 83 8D */	bl mem_cmp
/* 805326DC  2C 03 00 00 */	cmpwi r3, 0
/* 805326E0  40 82 00 18 */	bne lbl_805326F8
/* 805326E4  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 805326E8  38 81 00 08 */	addi r4, r1, 8
/* 805326EC  38 A0 00 0A */	li r5, 0xa
/* 805326F0  4B E8 83 35 */	bl func_803BAA24
/* 805326F4  48 00 00 18 */	b lbl_8053270C
lbl_805326F8:
/* 805326F8  3B BD 00 1C */	addi r29, r29, 0x1c
/* 805326FC  3B DE 00 01 */	addi r30, r30, 1
lbl_80532700:
/* 80532700  80 1F 00 00 */	lwz r0, 0(r31)
/* 80532704  7C 1E 00 00 */	cmpw r30, r0
/* 80532708  41 80 FF C4 */	blt lbl_805326CC
lbl_8053270C:
/* 8053270C  7F 63 DB 78 */	mr r3, r27
/* 80532710  7F 84 E3 78 */	mr r4, r28
/* 80532714  38 A0 00 08 */	li r5, 8
/* 80532718  4B FF E5 41 */	bl aNPC_set_relation
/* 8053271C  7F 63 DB 78 */	mr r3, r27
/* 80532720  38 80 00 01 */	li r4, 1
/* 80532724  38 A0 00 01 */	li r5, 1
/* 80532728  4B FF E5 A5 */	bl aNPC_set_feel_info
/* 8053272C  7F 83 E3 78 */	mr r3, r28
/* 80532730  7F 64 DB 78 */	mr r4, r27
/* 80532734  38 A0 00 08 */	li r5, 8
/* 80532738  4B FF E5 21 */	bl aNPC_set_relation
/* 8053273C  7F 83 E3 78 */	mr r3, r28
/* 80532740  38 80 00 01 */	li r4, 1
/* 80532744  38 A0 00 01 */	li r5, 1
/* 80532748  4B FF E5 85 */	bl aNPC_set_feel_info
/* 8053274C  39 61 00 30 */	addi r11, r1, 0x30
/* 80532750  4B B6 87 C9 */	bl func_8009AF18
/* 80532754  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80532758  7C 08 03 A6 */	mtlr r0
/* 8053275C  38 21 00 30 */	addi r1, r1, 0x30
/* 80532760  4E 80 00 20 */	blr 
