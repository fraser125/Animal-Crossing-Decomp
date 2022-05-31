lbl_805E17F4:
/* 805E17F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E17F8  7C 08 02 A6 */	mflr r0
/* 805E17FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E1800  4B FF FE 95 */	bl mIV_ChangeIndex_mIV_to_mPlib
/* 805E1804  4B DF 74 DD */	bl mPlib_Get_BasicItemAnimeIndex_fromItemKind
/* 805E1808  2C 03 00 00 */	cmpwi r3, 0
/* 805E180C  41 80 00 24 */	blt lbl_805E1830
/* 805E1810  2C 03 00 32 */	cmpwi r3, 0x32
/* 805E1814  40 80 00 1C */	bge lbl_805E1830
/* 805E1818  2C 03 00 20 */	cmpwi r3, 0x20
/* 805E181C  38 00 00 1F */	li r0, 0x1f
/* 805E1820  41 82 00 08 */	beq lbl_805E1828
/* 805E1824  7C 60 1B 78 */	mr r0, r3
lbl_805E1828:
/* 805E1828  7C 03 03 78 */	mr r3, r0
/* 805E182C  48 00 00 08 */	b lbl_805E1834
lbl_805E1830:
/* 805E1830  38 60 00 32 */	li r3, 0x32
lbl_805E1834:
/* 805E1834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E1838  7C 08 03 A6 */	mtlr r0
/* 805E183C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E1840  4E 80 00 20 */	blr 
