lbl_804697E4:
/* 804697E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804697E8  7C 08 02 A6 */	mflr r0
/* 804697EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804697F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804697F4  7C 9F 23 78 */	mr r31, r4
/* 804697F8  93 C1 00 08 */	stw r30, 8(r1)
/* 804697FC  7C 7E 1B 78 */	mr r30, r3
/* 80469800  7F E3 FB 78 */	mr r3, r31
/* 80469804  4B F6 FE 3D */	bl get_player_actor_withoutCheck
/* 80469808  7C 64 1B 78 */	mr r4, r3
/* 8046980C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80469810  38 84 00 28 */	addi r4, r4, 0x28
/* 80469814  4B F5 17 C1 */	bl search_position_distance
/* 80469818  3C 60 80 64 */	lis r3, lit_464@ha /* 0x806445D0@ha */
/* 8046981C  C0 03 45 D0 */	lfs f0, lit_464@l(r3)  /* 0x806445D0@l */
/* 80469820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469824  40 81 00 18 */	ble lbl_8046983C
/* 80469828  7F C3 F3 78 */	mr r3, r30
/* 8046982C  7F E5 FB 78 */	mr r5, r31
/* 80469830  38 80 00 04 */	li r4, 4
/* 80469834  48 00 06 95 */	bl minsect_kumo_setupAction
/* 80469838  48 00 00 38 */	b lbl_80469870
lbl_8046983C:
/* 8046983C  3C 60 80 64 */	lis r3, lit_935@ha /* 0x806446C4@ha */
/* 80469840  C0 03 46 C4 */	lfs f0, lit_935@l(r3)  /* 0x806446C4@l */
/* 80469844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80469848  40 80 00 28 */	bge lbl_80469870
/* 8046984C  3C 60 80 47 */	lis r3, minsect_kumo_hide@ha /* 0x80468EC4@ha */
/* 80469850  80 9E 00 04 */	lwz r4, 4(r30)
/* 80469854  38 03 8E C4 */	addi r0, r3, minsect_kumo_hide@l /* 0x80468EC4@l */
/* 80469858  7C 04 00 40 */	cmplw r4, r0
/* 8046985C  40 82 00 14 */	bne lbl_80469870
/* 80469860  7F C3 F3 78 */	mr r3, r30
/* 80469864  7F E5 FB 78 */	mr r5, r31
/* 80469868  38 80 00 03 */	li r4, 3
/* 8046986C  48 00 06 5D */	bl minsect_kumo_setupAction
lbl_80469870:
/* 80469870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80469874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80469878  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046987C  7C 08 03 A6 */	mtlr r0
/* 80469880  38 21 00 10 */	addi r1, r1, 0x10
/* 80469884  4E 80 00 20 */	blr 
