lbl_804D9F60:
/* 804D9F60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D9F64  7C 08 02 A6 */	mflr r0
/* 804D9F68  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D9F6C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804D9F70  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804D9F74  39 61 00 20 */	addi r11, r1, 0x20
/* 804D9F78  4B BC 0F 55 */	bl func_8009AECC
/* 804D9F7C  7C 7B 1B 78 */	mr r27, r3
/* 804D9F80  FF E0 08 90 */	fmr f31, f1
/* 804D9F84  7C 9C 23 78 */	mr r28, r4
/* 804D9F88  80 83 0D 08 */	lwz r4, 0xd08(r3)
/* 804D9F8C  7C BD 2B 78 */	mr r29, r5
/* 804D9F90  7C DE 33 78 */	mr r30, r6
/* 804D9F94  48 00 6A 11 */	bl Player_actor_Get_ItemKind
/* 804D9F98  88 BB 11 2B */	lbz r5, 0x112b(r27)
/* 804D9F9C  7C 7F 07 74 */	extsb r31, r3
/* 804D9FA0  7F 63 DB 78 */	mr r3, r27
/* 804D9FA4  7F 86 E3 78 */	mr r6, r28
/* 804D9FA8  7F E4 FB 78 */	mr r4, r31
/* 804D9FAC  7F A7 EB 78 */	mr r7, r29
/* 804D9FB0  7F C8 F3 78 */	mr r8, r30
/* 804D9FB4  7C A5 07 74 */	extsb r5, r5
/* 804D9FB8  4B FF FE D1 */	bl Player_actor_SetupItem_Base_windmill
/* 804D9FBC  2C 03 00 00 */	cmpwi r3, 0
/* 804D9FC0  40 82 00 3C */	bne lbl_804D9FFC
/* 804D9FC4  7F E3 FB 78 */	mr r3, r31
/* 804D9FC8  4B EF ED 19 */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 804D9FCC  3C A0 80 64 */	lis r5, lit_2671@ha /* 0x80646C4C@ha */
/* 804D9FD0  3C 80 80 64 */	lis r4, lit_950@ha /* 0x806468F4@ha */
/* 804D9FD4  38 C5 6C 4C */	addi r6, r5, lit_2671@l /* 0x80646C4C@l */
/* 804D9FD8  FC 40 F8 90 */	fmr f2, f31
/* 804D9FDC  C0 26 00 00 */	lfs f1, 0(r6)
/* 804D9FE0  7C 65 1B 78 */	mr r5, r3
/* 804D9FE4  C0 64 68 F4 */	lfs f3, lit_950@l(r4)  /* 0x806468F4@l */
/* 804D9FE8  7F 63 DB 78 */	mr r3, r27
/* 804D9FEC  7F 84 E3 78 */	mr r4, r28
/* 804D9FF0  7F A6 EB 78 */	mr r6, r29
/* 804D9FF4  7F C7 F3 78 */	mr r7, r30
/* 804D9FF8  4B FF FD AD */	bl Player_actor_SetupItem_Base0
lbl_804D9FFC:
/* 804D9FFC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804DA000  39 61 00 20 */	addi r11, r1, 0x20
/* 804DA004  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804DA008  4B BC 0F 11 */	bl func_8009AF18
/* 804DA00C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DA010  7C 08 03 A6 */	mtlr r0
/* 804DA014  38 21 00 30 */	addi r1, r1, 0x30
/* 804DA018  4E 80 00 20 */	blr 
