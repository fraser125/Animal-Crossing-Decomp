lbl_8047A810:
/* 8047A810  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8047A814  7C 08 02 A6 */	mflr r0
/* 8047A818  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047A81C  39 61 00 20 */	addi r11, r1, 0x20
/* 8047A820  4B C2 06 AD */	bl func_8009AECC
/* 8047A824  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047A828  87 A4 DF E8 */	lwzu r29, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 8047A82C  83 84 00 04 */	lwz r28, 4(r4)
/* 8047A830  4B F5 EE 11 */	bl get_player_actor_withoutCheck
/* 8047A834  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047A838  7C 7E 1B 78 */	mr r30, r3
/* 8047A83C  3B E4 DF E8 */	addi r31, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047A840  3B 60 00 00 */	li r27, 0
/* 8047A844  48 00 00 38 */	b lbl_8047A87C
lbl_8047A848:
/* 8047A848  88 1C 00 00 */	lbz r0, 0(r28)
/* 8047A84C  28 00 00 00 */	cmplwi r0, 0
/* 8047A850  41 82 00 20 */	beq lbl_8047A870
/* 8047A854  7F A4 EB 78 */	mr r4, r29
/* 8047A858  38 7D 00 4C */	addi r3, r29, 0x4c
/* 8047A85C  4B FF FE B1 */	bl aMR_MakeFurnitureCollisionData
/* 8047A860  38 7E 00 28 */	addi r3, r30, 0x28
/* 8047A864  38 9D 00 08 */	addi r4, r29, 8
/* 8047A868  4B FF FB 59 */	bl aMR_GetDistXZ
/* 8047A86C  D0 3D 00 30 */	stfs f1, 0x30(r29)
lbl_8047A870:
/* 8047A870  3B BD 08 58 */	addi r29, r29, 0x858
/* 8047A874  3B 9C 00 01 */	addi r28, r28, 1
/* 8047A878  3B 7B 00 01 */	addi r27, r27, 1
lbl_8047A87C:
/* 8047A87C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8047A880  7C 1B 00 00 */	cmpw r27, r0
/* 8047A884  41 80 FF C4 */	blt lbl_8047A848
/* 8047A888  39 61 00 20 */	addi r11, r1, 0x20
/* 8047A88C  4B C2 06 8D */	bl func_8009AF18
/* 8047A890  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047A894  7C 08 03 A6 */	mtlr r0
/* 8047A898  38 21 00 20 */	addi r1, r1, 0x20
/* 8047A89C  4E 80 00 20 */	blr 
