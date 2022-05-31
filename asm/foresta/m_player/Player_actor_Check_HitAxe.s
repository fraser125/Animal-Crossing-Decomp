lbl_804DA8E4:
/* 804DA8E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DA8E8  7C 08 02 A6 */	mflr r0
/* 804DA8EC  38 A0 00 00 */	li r5, 0
/* 804DA8F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DA8F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DA8F8  93 C1 00 08 */	stw r30, 8(r1)
/* 804DA8FC  7C 9E 23 78 */	mr r30, r4
/* 804DA900  38 80 00 00 */	li r4, 0
/* 804DA904  80 03 0C F8 */	lwz r0, 0xcf8(r3)
/* 804DA908  2C 00 00 27 */	cmpwi r0, 0x27
/* 804DA90C  41 82 00 28 */	beq lbl_804DA934
/* 804DA910  40 80 00 10 */	bge lbl_804DA920
/* 804DA914  2C 00 00 25 */	cmpwi r0, 0x25
/* 804DA918  41 82 00 14 */	beq lbl_804DA92C
/* 804DA91C  48 00 00 40 */	b lbl_804DA95C
lbl_804DA920:
/* 804DA920  2C 00 00 29 */	cmpwi r0, 0x29
/* 804DA924  40 80 00 38 */	bge lbl_804DA95C
/* 804DA928  48 00 00 14 */	b lbl_804DA93C
lbl_804DA92C:
/* 804DA92C  38 83 0D 18 */	addi r4, r3, 0xd18
/* 804DA930  48 00 00 34 */	b lbl_804DA964
lbl_804DA934:
/* 804DA934  38 A3 0D 18 */	addi r5, r3, 0xd18
/* 804DA938  48 00 00 2C */	b lbl_804DA964
lbl_804DA93C:
/* 804DA93C  38 C3 0D 18 */	addi r6, r3, 0xd18
/* 804DA940  80 03 0D 3C */	lwz r0, 0xd3c(r3)
/* 804DA944  2C 00 00 00 */	cmpwi r0, 0
/* 804DA948  41 82 00 0C */	beq lbl_804DA954
/* 804DA94C  7C C5 33 78 */	mr r5, r6
/* 804DA950  48 00 00 14 */	b lbl_804DA964
lbl_804DA954:
/* 804DA954  7C C4 33 78 */	mr r4, r6
/* 804DA958  48 00 00 0C */	b lbl_804DA964
lbl_804DA95C:
/* 804DA95C  38 60 00 00 */	li r3, 0
/* 804DA960  48 00 00 64 */	b lbl_804DA9C4
lbl_804DA964:
/* 804DA964  28 04 00 00 */	cmplwi r4, 0
/* 804DA968  41 82 00 0C */	beq lbl_804DA974
/* 804DA96C  7C 9F 23 78 */	mr r31, r4
/* 804DA970  48 00 00 08 */	b lbl_804DA978
lbl_804DA974:
/* 804DA974  7C BF 2B 78 */	mr r31, r5
lbl_804DA978:
/* 804DA978  28 1F 00 00 */	cmplwi r31, 0
/* 804DA97C  41 82 00 44 */	beq lbl_804DA9C0
/* 804DA980  3C 80 80 64 */	lis r4, lit_3046@ha /* 0x80646E54@ha */
/* 804DA984  38 63 01 74 */	addi r3, r3, 0x174
/* 804DA988  C0 24 6E 54 */	lfs f1, lit_3046@l(r4)  /* 0x80646E54@l */
/* 804DA98C  4B FF CC 75 */	bl Player_actor_Check_AnimationFrame
/* 804DA990  2C 03 00 00 */	cmpwi r3, 0
/* 804DA994  41 82 00 2C */	beq lbl_804DA9C0
/* 804DA998  28 1E 00 00 */	cmplwi r30, 0
/* 804DA99C  41 82 00 1C */	beq lbl_804DA9B8
/* 804DA9A0  80 7F 00 00 */	lwz r3, 0(r31)
/* 804DA9A4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804DA9A8  90 7E 00 00 */	stw r3, 0(r30)
/* 804DA9AC  90 1E 00 04 */	stw r0, 4(r30)
/* 804DA9B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DA9B4  90 1E 00 08 */	stw r0, 8(r30)
lbl_804DA9B8:
/* 804DA9B8  38 60 00 01 */	li r3, 1
/* 804DA9BC  48 00 00 08 */	b lbl_804DA9C4
lbl_804DA9C0:
/* 804DA9C0  38 60 00 00 */	li r3, 0
lbl_804DA9C4:
/* 804DA9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DA9C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DA9CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DA9D0  7C 08 03 A6 */	mtlr r0
/* 804DA9D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804DA9D8  4E 80 00 20 */	blr 
