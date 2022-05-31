lbl_804AEB7C:
/* 804AEB7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AEB80  7C 08 02 A6 */	mflr r0
/* 804AEB84  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AEB88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AEB8C  7C 7F 1B 78 */	mr r31, r3
/* 804AEB90  93 C1 00 08 */	stw r30, 8(r1)
/* 804AEB94  7C 9E 23 78 */	mr r30, r4
/* 804AEB98  C0 23 00 7C */	lfs f1, 0x7c(r3)
/* 804AEB9C  C0 43 00 78 */	lfs f2, 0x78(r3)
/* 804AEBA0  38 7F 00 6C */	addi r3, r31, 0x6c
/* 804AEBA4  4B F0 C0 C5 */	bl chase_f
/* 804AEBA8  7F E3 FB 78 */	mr r3, r31
/* 804AEBAC  7F C4 F3 78 */	mr r4, r30
/* 804AEBB0  4B FF FA F5 */	bl aUKI_force_command
/* 804AEBB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804AEBB8  40 82 00 98 */	bne lbl_804AEC50
/* 804AEBBC  80 1F 02 88 */	lwz r0, 0x288(r31)
/* 804AEBC0  2C 00 00 02 */	cmpwi r0, 2
/* 804AEBC4  40 82 00 24 */	bne lbl_804AEBE8
/* 804AEBC8  7F E3 FB 78 */	mr r3, r31
/* 804AEBCC  4B FF EE AD */	bl aUKI_touch_vib_proc
/* 804AEBD0  7F E3 FB 78 */	mr r3, r31
/* 804AEBD4  7F C4 F3 78 */	mr r4, r30
/* 804AEBD8  38 A0 00 07 */	li r5, 7
/* 804AEBDC  38 C0 00 00 */	li r6, 0
/* 804AEBE0  48 00 07 9D */	bl aUKI_set_proc
/* 804AEBE4  48 00 00 64 */	b lbl_804AEC48
lbl_804AEBE8:
/* 804AEBE8  80 1F 02 34 */	lwz r0, 0x234(r31)
/* 804AEBEC  2C 00 00 06 */	cmpwi r0, 6
/* 804AEBF0  40 82 00 4C */	bne lbl_804AEC3C
/* 804AEBF4  7F E3 FB 78 */	mr r3, r31
/* 804AEBF8  4B FF EF 51 */	bl aUKI_clear_spd
/* 804AEBFC  A8 7F 02 62 */	lha r3, 0x262(r31)
/* 804AEC00  2C 03 00 00 */	cmpwi r3, 0
/* 804AEC04  40 82 00 0C */	bne lbl_804AEC10
/* 804AEC08  38 00 00 00 */	li r0, 0
/* 804AEC0C  48 00 00 10 */	b lbl_804AEC1C
lbl_804AEC10:
/* 804AEC10  38 03 FF FF */	addi r0, r3, -1
/* 804AEC14  B0 1F 02 62 */	sth r0, 0x262(r31)
/* 804AEC18  7C 00 07 34 */	extsh r0, r0
lbl_804AEC1C:
/* 804AEC1C  2C 00 00 00 */	cmpwi r0, 0
/* 804AEC20  40 82 00 28 */	bne lbl_804AEC48
/* 804AEC24  7F E3 FB 78 */	mr r3, r31
/* 804AEC28  7F C4 F3 78 */	mr r4, r30
/* 804AEC2C  38 A0 00 05 */	li r5, 5
/* 804AEC30  38 C0 00 01 */	li r6, 1
/* 804AEC34  48 00 07 49 */	bl aUKI_set_proc
/* 804AEC38  48 00 00 10 */	b lbl_804AEC48
lbl_804AEC3C:
/* 804AEC3C  7F E3 FB 78 */	mr r3, r31
/* 804AEC40  7F C4 F3 78 */	mr r4, r30
/* 804AEC44  4B FF F3 39 */	bl aUKI_movement
lbl_804AEC48:
/* 804AEC48  7F E3 FB 78 */	mr r3, r31
/* 804AEC4C  4B EC 55 BD */	bl Actor_position_move
lbl_804AEC50:
/* 804AEC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AEC58  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AEC5C  7C 08 03 A6 */	mtlr r0
/* 804AEC60  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEC64  4E 80 00 20 */	blr 
