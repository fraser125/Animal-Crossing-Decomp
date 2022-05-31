lbl_803C24AC:
/* 803C24AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C24B0  7C 08 02 A6 */	mflr r0
/* 803C24B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C24B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C24BC  93 C1 00 08 */	stw r30, 8(r1)
/* 803C24C0  7C 7E 1B 78 */	mr r30, r3
/* 803C24C4  4B FF F9 65 */	bl mMsg_check_sound_special
/* 803C24C8  2C 03 00 00 */	cmpwi r3, 0
/* 803C24CC  41 82 00 0C */	beq lbl_803C24D8
/* 803C24D0  3B E0 00 04 */	li r31, 4
/* 803C24D4  48 00 00 10 */	b lbl_803C24E4
lbl_803C24D8:
/* 803C24D8  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 803C24DC  48 00 FB 7D */	bl mNpc_GetNpcSoundSpec
/* 803C24E0  7C 7F 1B 78 */	mr r31, r3
lbl_803C24E4:
/* 803C24E4  7F E3 FB 78 */	mr r3, r31
/* 803C24E8  48 26 BD A5 */	bl sAdo_SpecChange
/* 803C24EC  80 1E 04 0C */	lwz r0, 0x40c(r30)
/* 803C24F0  60 00 00 10 */	ori r0, r0, 0x10
/* 803C24F4  90 1E 04 0C */	stw r0, 0x40c(r30)
/* 803C24F8  93 FE 03 FC */	stw r31, 0x3fc(r30)
/* 803C24FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C2500  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C2504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2508  7C 08 03 A6 */	mtlr r0
/* 803C250C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2510  4E 80 00 20 */	blr 
