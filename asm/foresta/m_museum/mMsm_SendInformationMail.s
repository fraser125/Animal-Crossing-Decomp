lbl_803C6224:
/* 803C6224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C6228  7C 08 02 A6 */	mflr r0
/* 803C622C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C6230  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6234  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803C6238  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C623C  3B E3 00 20 */	addi r31, r3, 0x20
/* 803C6240  93 C1 00 08 */	stw r30, 8(r1)
/* 803C6244  3B C0 00 00 */	li r30, 0
lbl_803C6248:
/* 803C6248  7F E3 FB 78 */	mr r3, r31
/* 803C624C  48 01 9D F9 */	bl mPr_NullCheckPersonalID
/* 803C6250  2C 03 00 00 */	cmpwi r3, 0
/* 803C6254  40 82 00 68 */	bne lbl_803C62BC
/* 803C6258  7F E3 FB 78 */	mr r3, r31
/* 803C625C  48 01 AE 41 */	bl mPr_CheckMuseumInfoMail
/* 803C6260  2C 03 00 00 */	cmpwi r3, 0
/* 803C6264  41 82 00 58 */	beq lbl_803C62BC
/* 803C6268  3C 60 81 17 */	lis r3, data_8116AB38@ha /* 0x8116AB38@ha */
/* 803C626C  3C 80 80 66 */	lis r4, data_8065A180@ha /* 0x8065A180@ha */
/* 803C6270  38 A3 AB 38 */	addi r5, r3, data_8116AB38@l /* 0x8116AB38@l */
/* 803C6274  38 C0 00 00 */	li r6, 0
/* 803C6278  39 24 A1 80 */	addi r9, r4, data_8065A180@l /* 0x8065A180@l */
/* 803C627C  7F E3 FB 78 */	mr r3, r31
/* 803C6280  7F C4 F3 78 */	mr r4, r30
/* 803C6284  38 E0 20 18 */	li r7, 0x2018
/* 803C6288  39 00 00 BD */	li r8, 0xbd
/* 803C628C  39 40 00 01 */	li r10, 1
/* 803C6290  4B FF 6B 95 */	bl mMl_send_mail_box
/* 803C6294  2C 03 00 01 */	cmpwi r3, 1
/* 803C6298  40 82 00 24 */	bne lbl_803C62BC
/* 803C629C  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 803C62A0  38 60 00 01 */	li r3, 1
/* 803C62A4  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 803C62A8  38 60 00 00 */	li r3, 0
/* 803C62AC  98 1F 00 18 */	stb r0, 0x18(r31)
/* 803C62B0  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 803C62B4  50 60 2E B4 */	rlwimi r0, r3, 5, 0x1a, 0x1a
/* 803C62B8  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_803C62BC:
/* 803C62BC  3B DE 00 01 */	addi r30, r30, 1
/* 803C62C0  3B FF 24 40 */	addi r31, r31, 0x2440
/* 803C62C4  2C 1E 00 04 */	cmpwi r30, 4
/* 803C62C8  41 80 FF 80 */	blt lbl_803C6248
/* 803C62CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C62D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C62D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C62D8  7C 08 03 A6 */	mtlr r0
/* 803C62DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803C62E0  4E 80 00 20 */	blr 
