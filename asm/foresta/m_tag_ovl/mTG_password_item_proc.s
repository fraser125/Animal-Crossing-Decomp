lbl_805F6220:
/* 805F6220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F6224  7C 08 02 A6 */	mflr r0
/* 805F6228  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F622C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F6230  7C 9F 23 78 */	mr r31, r4
/* 805F6234  93 C1 00 08 */	stw r30, 8(r1)
/* 805F6238  7C 7E 1B 78 */	mr r30, r3
/* 805F623C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F6240  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F6244  38 63 00 08 */	addi r3, r3, 8
/* 805F6248  4B FF 99 19 */	bl mTG_get_table_idx
/* 805F624C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F6250  54 64 08 3C */	slwi r4, r3, 1
/* 805F6254  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F6258  80 FE 01 74 */	lwz r7, 0x174(r30)
/* 805F625C  3C A5 00 02 */	addis r5, r5, 2
/* 805F6260  80 A5 61 3C */	lwz r5, 0x613c(r5)
/* 805F6264  80 05 00 88 */	lwz r0, 0x88(r5)
/* 805F6268  7C 00 24 30 */	srw r0, r0, r4
/* 805F626C  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805F6270  28 00 00 02 */	cmplwi r0, 2
/* 805F6274  40 82 00 18 */	bne lbl_805F628C
/* 805F6278  7F C3 F3 78 */	mr r3, r30
/* 805F627C  7F E4 FB 78 */	mr r4, r31
/* 805F6280  38 A0 00 08 */	li r5, 8
/* 805F6284  4B FF CB 9D */	bl mTG_open_warning_window
/* 805F6288  48 00 00 2C */	b lbl_805F62B4
lbl_805F628C:
/* 805F628C  7C 85 22 14 */	add r4, r5, r4
/* 805F6290  38 00 00 01 */	li r0, 1
/* 805F6294  A0 C4 00 68 */	lhz r6, 0x68(r4)
/* 805F6298  7F E4 FB 78 */	mr r4, r31
/* 805F629C  38 A0 00 01 */	li r5, 1
/* 805F62A0  B0 C7 00 00 */	sth r6, 0(r7)
/* 805F62A4  98 67 00 02 */	stb r3, 2(r7)
/* 805F62A8  7F C3 F3 78 */	mr r3, r30
/* 805F62AC  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F62B0  4B FF CD 65 */	bl mTG_close_window
lbl_805F62B4:
/* 805F62B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F62B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F62BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F62C0  7C 08 03 A6 */	mtlr r0
/* 805F62C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805F62C8  4E 80 00 20 */	blr 
