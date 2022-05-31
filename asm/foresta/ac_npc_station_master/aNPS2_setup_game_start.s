lbl_8057F73C:
/* 8057F73C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8057F740  7C 08 02 A6 */	mflr r0
/* 8057F744  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057F748  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8057F74C  7C 7F 1B 78 */	mr r31, r3
/* 8057F750  38 61 00 08 */	addi r3, r1, 8
/* 8057F754  4B FF FF 85 */	bl aNPS2_make_door_data
/* 8057F758  7F E3 FB 78 */	mr r3, r31
/* 8057F75C  38 81 00 08 */	addi r4, r1, 8
/* 8057F760  38 A0 00 01 */	li r5, 1
/* 8057F764  4B E7 1A 45 */	bl goto_other_scene
/* 8057F768  2C 03 00 01 */	cmpwi r3, 1
/* 8057F76C  41 82 00 0C */	beq lbl_8057F778
/* 8057F770  38 60 00 00 */	li r3, 0
/* 8057F774  48 00 00 10 */	b lbl_8057F784
lbl_8057F778:
/* 8057F778  38 60 32 8A */	li r3, 0x328a
/* 8057F77C  4B DF C3 91 */	bl mBGMPsComp_make_ps_wipe
/* 8057F780  38 60 00 01 */	li r3, 1
lbl_8057F784:
/* 8057F784  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057F788  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8057F78C  7C 08 03 A6 */	mtlr r0
/* 8057F790  38 21 00 30 */	addi r1, r1, 0x30
/* 8057F794  4E 80 00 20 */	blr 
