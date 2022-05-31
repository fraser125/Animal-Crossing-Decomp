lbl_8057D90C:
/* 8057D90C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D910  7C 08 02 A6 */	mflr r0
/* 8057D914  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D918  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D91C  7C 9F 23 78 */	mr r31, r4
/* 8057D920  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D924  7C 7E 1B 78 */	mr r30, r3
/* 8057D928  7F E3 FB 78 */	mr r3, r31
/* 8057D92C  4B FF F1 4D */	bl func_8057CA78
/* 8057D930  2C 03 00 00 */	cmpwi r3, 0
/* 8057D934  41 82 00 18 */	beq lbl_8057D94C
/* 8057D938  7F C3 F3 78 */	mr r3, r30
/* 8057D93C  7F E4 FB 78 */	mr r4, r31
/* 8057D940  38 A0 00 04 */	li r5, 4
/* 8057D944  48 00 08 FD */	bl aSHM_setup_think_proc
/* 8057D948  48 00 00 28 */	b lbl_8057D970
lbl_8057D94C:
/* 8057D94C  7F C3 F3 78 */	mr r3, r30
/* 8057D950  7F E4 FB 78 */	mr r4, r31
/* 8057D954  4B FF F1 7D */	bl player_buy
/* 8057D958  2C 03 00 00 */	cmpwi r3, 0
/* 8057D95C  41 82 00 14 */	beq lbl_8057D970
/* 8057D960  7F C3 F3 78 */	mr r3, r30
/* 8057D964  7F E4 FB 78 */	mr r4, r31
/* 8057D968  38 A0 00 05 */	li r5, 5
/* 8057D96C  48 00 08 D5 */	bl aSHM_setup_think_proc
lbl_8057D970:
/* 8057D970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D978  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D97C  7C 08 03 A6 */	mtlr r0
/* 8057D980  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D984  4E 80 00 20 */	blr 
