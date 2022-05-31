lbl_804F1930:
/* 804F1930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1934  7C 08 02 A6 */	mflr r0
/* 804F1938  2C 05 00 00 */	cmpwi r5, 0
/* 804F193C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F1944  7C 9F 23 78 */	mr r31, r4
/* 804F1948  41 82 00 2C */	beq lbl_804F1974
/* 804F194C  4B FE 3A 21 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804F1950  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F1954  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804F1958  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804F195C  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804F1960  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F1964  7F E3 FB 78 */	mr r3, r31
/* 804F1968  38 80 00 00 */	li r4, 0
/* 804F196C  38 A0 00 01 */	li r5, 1
/* 804F1970  4B FF 42 8D */	bl func_804E5BFC
lbl_804F1974:
/* 804F1974  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F197C  7C 08 03 A6 */	mtlr r0
/* 804F1980  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1984  4E 80 00 20 */	blr 
