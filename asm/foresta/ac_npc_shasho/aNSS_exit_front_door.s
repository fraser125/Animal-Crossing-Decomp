lbl_80576804:
/* 80576804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576808  7C 08 02 A6 */	mflr r0
/* 8057680C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576810  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80576814  2C 00 00 01 */	cmpwi r0, 1
/* 80576818  40 82 00 24 */	bne lbl_8057683C
/* 8057681C  80 A3 09 98 */	lwz r5, 0x998(r3)
/* 80576820  2C 05 FF FF */	cmpwi r5, -1
/* 80576824  40 82 00 10 */	bne lbl_80576834
/* 80576828  38 00 FF FF */	li r0, -1
/* 8057682C  90 03 09 94 */	stw r0, 0x994(r3)
/* 80576830  48 00 00 10 */	b lbl_80576840
lbl_80576834:
/* 80576834  48 00 02 91 */	bl aNSS_setupAction
/* 80576838  48 00 00 08 */	b lbl_80576840
lbl_8057683C:
/* 8057683C  4B FF FD B5 */	bl aNSS_set_door_SE
lbl_80576840:
/* 80576840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576844  7C 08 03 A6 */	mtlr r0
/* 80576848  38 21 00 10 */	addi r1, r1, 0x10
/* 8057684C  4E 80 00 20 */	blr 