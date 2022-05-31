lbl_8059E500:
/* 8059E500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E504  7C 08 02 A6 */	mflr r0
/* 8059E508  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E50C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E510  7C 7F 1B 78 */	mr r31, r3
/* 8059E514  4B FF FD FD */	bl aIMN_chk_water_attr
/* 8059E518  2C 03 00 00 */	cmpwi r3, 0
/* 8059E51C  40 82 00 0C */	bne lbl_8059E528
/* 8059E520  7F E3 FB 78 */	mr r3, r31
/* 8059E524  4B FF FE DD */	bl aIMN_calc_direction_angl
lbl_8059E528:
/* 8059E528  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059E52C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059E530  7C 08 03 A6 */	mtlr r0
/* 8059E534  38 21 00 10 */	addi r1, r1, 0x10
/* 8059E538  4E 80 00 20 */	blr 
