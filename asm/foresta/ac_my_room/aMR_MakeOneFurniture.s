lbl_8047228C:
/* 8047228C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80472290  7C 08 02 A6 */	mflr r0
/* 80472294  90 01 00 44 */	stw r0, 0x44(r1)
/* 80472298  39 61 00 40 */	addi r11, r1, 0x40
/* 8047229C  4B C2 8C 21 */	bl func_8009AEBC
/* 804722A0  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 804722A4  7C 9B 23 78 */	mr r27, r4
/* 804722A8  2C 00 00 01 */	cmpwi r0, 1
/* 804722AC  7C 7A 1B 78 */	mr r26, r3
/* 804722B0  7C BC 2B 78 */	mr r28, r5
/* 804722B4  7C DD 33 78 */	mr r29, r6
/* 804722B8  7C FE 3B 78 */	mr r30, r7
/* 804722BC  7D 1F 43 78 */	mr r31, r8
/* 804722C0  41 82 00 0C */	beq lbl_804722CC
/* 804722C4  2C 00 00 03 */	cmpwi r0, 3
/* 804722C8  40 82 00 A8 */	bne lbl_80472370
lbl_804722CC:
/* 804722CC  4B FF EC 9D */	bl aMR_CountFurniture
/* 804722D0  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 804722D4  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 804722D8  80 04 00 08 */	lwz r0, 8(r4)
/* 804722DC  7C 03 00 00 */	cmpw r3, r0
/* 804722E0  40 80 00 90 */	bge lbl_80472370
/* 804722E4  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 804722E8  4B F7 54 A9 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804722EC  54 79 04 3E */	clrlwi r25, r3, 0x10
/* 804722F0  4B FF EB E1 */	bl aMR_SearchFreeFurnitureActorNumber
/* 804722F4  7C 78 1B 78 */	mr r24, r3
/* 804722F8  2C 18 FF FF */	cmpwi r24, -1
/* 804722FC  41 82 00 74 */	beq lbl_80472370
/* 80472300  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 80472304  7F 23 CB 78 */	mr r3, r25
/* 80472308  38 A4 DF E8 */	addi r5, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047230C  7F 84 E3 78 */	mr r4, r28
/* 80472310  1C 18 08 58 */	mulli r0, r24, 0x858
/* 80472314  80 C5 00 00 */	lwz r6, 0(r5)
/* 80472318  83 25 00 04 */	lwz r25, 4(r5)
/* 8047231C  7F 65 DB 78 */	mr r5, r27
/* 80472320  7E E6 02 14 */	add r23, r6, r0
/* 80472324  4B FF FF 05 */	bl aMR_GetFurnitureBank2
/* 80472328  2C 03 00 00 */	cmpwi r3, 0
/* 8047232C  41 82 00 44 */	beq lbl_80472370
/* 80472330  38 60 00 01 */	li r3, 1
/* 80472334  38 00 00 00 */	li r0, 0
/* 80472338  7C 79 C1 AE */	stbx r3, r25, r24
/* 8047233C  7E E3 BB 78 */	mr r3, r23
/* 80472340  7F 84 E3 78 */	mr r4, r28
/* 80472344  7F A5 EB 78 */	mr r5, r29
/* 80472348  90 01 00 08 */	stw r0, 8(r1)
/* 8047234C  7F C6 F3 78 */	mr r6, r30
/* 80472350  7F 67 DB 78 */	mr r7, r27
/* 80472354  7F 08 C3 78 */	mr r8, r24
/* 80472358  7F EA FB 78 */	mr r10, r31
/* 8047235C  39 20 00 00 */	li r9, 0
/* 80472360  4B FF FB 55 */	bl aMR_FurnitureCt
/* 80472364  7F 43 D3 78 */	mr r3, r26
/* 80472368  7E E4 BB 78 */	mr r4, r23
/* 8047236C  4B FF E9 31 */	bl aMR_PlussWeight
lbl_80472370:
/* 80472370  39 61 00 40 */	addi r11, r1, 0x40
/* 80472374  4B C2 8B 95 */	bl func_8009AF08
/* 80472378  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8047237C  7C 08 03 A6 */	mtlr r0
/* 80472380  38 21 00 40 */	addi r1, r1, 0x40
/* 80472384  4E 80 00 20 */	blr 
