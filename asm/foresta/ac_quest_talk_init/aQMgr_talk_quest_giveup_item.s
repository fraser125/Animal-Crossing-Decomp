lbl_8048CB20:
/* 8048CB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CB24  7C 08 02 A6 */	mflr r0
/* 8048CB28  38 80 00 00 */	li r4, 0
/* 8048CB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CB34  7C 7F 1B 78 */	mr r31, r3
/* 8048CB38  A0 03 01 C4 */	lhz r0, 0x1c4(r3)
/* 8048CB3C  80 A3 01 F8 */	lwz r5, 0x1f8(r3)
/* 8048CB40  28 00 00 00 */	cmplwi r0, 0
/* 8048CB44  41 82 00 78 */	beq lbl_8048CBBC
/* 8048CB48  38 00 00 07 */	li r0, 7
/* 8048CB4C  38 60 00 0D */	li r3, 0xd
/* 8048CB50  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048CB54  28 05 00 00 */	cmplwi r5, 0
/* 8048CB58  38 00 00 02 */	li r0, 2
/* 8048CB5C  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048CB60  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CB64  41 82 00 78 */	beq lbl_8048CBDC
/* 8048CB68  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8048CB6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8048CB70  28 03 00 00 */	cmplwi r3, 0
/* 8048CB74  41 82 00 68 */	beq lbl_8048CBDC
/* 8048CB78  80 05 00 30 */	lwz r0, 0x30(r5)
/* 8048CB7C  2C 00 02 CA */	cmpwi r0, 0x2ca
/* 8048CB80  41 82 00 30 */	beq lbl_8048CBB0
/* 8048CB84  40 80 00 10 */	bge lbl_8048CB94
/* 8048CB88  2C 00 02 B8 */	cmpwi r0, 0x2b8
/* 8048CB8C  41 82 00 14 */	beq lbl_8048CBA0
/* 8048CB90  48 00 00 24 */	b lbl_8048CBB4
lbl_8048CB94:
/* 8048CB94  2C 00 04 52 */	cmpwi r0, 0x452
/* 8048CB98  41 82 00 10 */	beq lbl_8048CBA8
/* 8048CB9C  48 00 00 18 */	b lbl_8048CBB4
lbl_8048CBA0:
/* 8048CBA0  38 80 FF FB */	li r4, -5
/* 8048CBA4  48 00 00 10 */	b lbl_8048CBB4
lbl_8048CBA8:
/* 8048CBA8  38 80 FF FE */	li r4, -2
/* 8048CBAC  48 00 00 08 */	b lbl_8048CBB4
lbl_8048CBB0:
/* 8048CBB0  38 80 FF FF */	li r4, -1
lbl_8048CBB4:
/* 8048CBB4  4B F3 EC 79 */	bl mNpc_AddFriendship
/* 8048CBB8  48 00 00 24 */	b lbl_8048CBDC
lbl_8048CBBC:
/* 8048CBBC  38 00 00 0D */	li r0, 0xd
/* 8048CBC0  38 80 04 99 */	li r4, 0x499
/* 8048CBC4  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048CBC8  38 60 00 09 */	li r3, 9
/* 8048CBCC  38 00 00 00 */	li r0, 0
/* 8048CBD0  90 9F 01 AC */	stw r4, 0x1ac(r31)
/* 8048CBD4  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8048CBD8  98 1F 01 85 */	stb r0, 0x185(r31)
lbl_8048CBDC:
/* 8048CBDC  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CBE0  7F E3 FB 78 */	mr r3, r31
/* 8048CBE4  38 80 00 02 */	li r4, 2
/* 8048CBE8  7D 89 03 A6 */	mtctr r12
/* 8048CBEC  4E 80 04 21 */	bctrl 
/* 8048CBF0  4B F3 2A B9 */	bl func_803BF6A8
/* 8048CBF4  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CBF8  4B F3 3D A1 */	bl mMsg_ChangeMsgData
/* 8048CBFC  4B F3 2A AD */	bl func_803BF6A8
/* 8048CC00  4B F3 2F 89 */	bl mMsg_request_main_appear_wait_type1
/* 8048CC04  4B F3 2A A5 */	bl func_803BF6A8
/* 8048CC08  4B F3 41 45 */	bl mMsg_Unset_LockContinue
/* 8048CC0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CC10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CC14  7C 08 03 A6 */	mtlr r0
/* 8048CC18  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CC1C  4E 80 00 20 */	blr 
