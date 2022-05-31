lbl_804FAE5C:
/* 804FAE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAE60  7C 08 02 A6 */	mflr r0
/* 804FAE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FAE6C  7C 7F 1B 78 */	mr r31, r3
/* 804FAE70  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804FAE74  2C 00 00 6E */	cmpwi r0, 0x6e
/* 804FAE78  41 82 00 0C */	beq lbl_804FAE84
/* 804FAE7C  2C 00 00 76 */	cmpwi r0, 0x76
/* 804FAE80  40 82 00 10 */	bne lbl_804FAE90
lbl_804FAE84:
/* 804FAE84  7F E3 FB 78 */	mr r3, r31
/* 804FAE88  4B FD A6 BD */	bl Player_actor_set_tex_anime_pattern
/* 804FAE8C  48 00 00 34 */	b lbl_804FAEC0
lbl_804FAE90:
/* 804FAE90  2C 00 00 6F */	cmpwi r0, 0x6f
/* 804FAE94  40 82 00 1C */	bne lbl_804FAEB0
/* 804FAE98  38 80 00 06 */	li r4, 6
/* 804FAE9C  4B FD A5 75 */	bl Player_actor_set_eye_pattern
/* 804FAEA0  7F E3 FB 78 */	mr r3, r31
/* 804FAEA4  38 80 00 05 */	li r4, 5
/* 804FAEA8  4B FD A6 71 */	bl Player_actor_set_mouth_pattern
/* 804FAEAC  48 00 00 14 */	b lbl_804FAEC0
lbl_804FAEB0:
/* 804FAEB0  4B FD A5 69 */	bl Player_actor_set_eye_pattern_normal
/* 804FAEB4  7F E3 FB 78 */	mr r3, r31
/* 804FAEB8  38 80 00 00 */	li r4, 0
/* 804FAEBC  4B FD A6 5D */	bl Player_actor_set_mouth_pattern
lbl_804FAEC0:
/* 804FAEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FAEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FAEC8  7C 08 03 A6 */	mtlr r0
/* 804FAECC  38 21 00 10 */	addi r1, r1, 0x10
/* 804FAED0  4E 80 00 20 */	blr 
