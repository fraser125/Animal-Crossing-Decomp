lbl_80566BF0:
/* 80566BF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566BF4  7C 08 02 A6 */	mflr r0
/* 80566BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566C00  7C 7F 1B 78 */	mr r31, r3
/* 80566C04  4B FF FD 5D */	bl aNPS_setup_voice_option
/* 80566C08  2C 03 00 01 */	cmpwi r3, 1
/* 80566C0C  40 82 00 10 */	bne lbl_80566C1C
/* 80566C10  80 9F 09 98 */	lwz r4, 0x998(r31)
/* 80566C14  7F E3 FB 78 */	mr r3, r31
/* 80566C18  48 00 00 E9 */	bl aNPS_change_talk_proc
lbl_80566C1C:
/* 80566C1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566C24  7C 08 03 A6 */	mtlr r0
/* 80566C28  38 21 00 10 */	addi r1, r1, 0x10
/* 80566C2C  4E 80 00 20 */	blr 
