lbl_805CC4B8:
/* 805CC4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC4BC  7C 08 02 A6 */	mflr r0
/* 805CC4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC4C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CC4C8  7C 9F 23 78 */	mr r31, r4
/* 805CC4CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805CC4D0  7C 7E 1B 78 */	mr r30, r3
/* 805CC4D4  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805CC4D8  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805CC4DC  1C 60 00 48 */	mulli r3, r0, 0x48
/* 805CC4E0  80 A4 09 C0 */	lwz r5, 0x9c0(r4)
/* 805CC4E4  38 63 00 54 */	addi r3, r3, 0x54
/* 805CC4E8  7C 64 1A 14 */	add r3, r4, r3
/* 805CC4EC  80 03 00 04 */	lwz r0, 4(r3)
/* 805CC4F0  2C 00 00 00 */	cmpwi r0, 0
/* 805CC4F4  40 82 00 C8 */	bne lbl_805CC5BC
/* 805CC4F8  80 03 00 30 */	lwz r0, 0x30(r3)
/* 805CC4FC  2C 00 00 04 */	cmpwi r0, 4
/* 805CC500  40 82 00 BC */	bne lbl_805CC5BC
/* 805CC504  80 03 00 00 */	lwz r0, 0(r3)
/* 805CC508  2C 00 00 0F */	cmpwi r0, 0xf
/* 805CC50C  40 82 00 78 */	bne lbl_805CC584
/* 805CC510  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 805CC514  2C 00 00 00 */	cmpwi r0, 0
/* 805CC518  40 82 00 34 */	bne lbl_805CC54C
/* 805CC51C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000BAC0@ha */
/* 805CC520  80 65 00 00 */	lwz r3, 0(r5)
/* 805CC524  38 84 BA C0 */	addi r4, r4, 0xBAC0 /* 0x0000BAC0@l */
/* 805CC528  38 A0 00 01 */	li r5, 1
/* 805CC52C  4B E2 DA B1 */	bl mCD_save_data_main_to_aram
/* 805CC530  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805CC534  7F E3 FB 78 */	mr r3, r31
/* 805CC538  38 80 00 00 */	li r4, 0
/* 805CC53C  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CC540  7D 89 03 A6 */	mtctr r12
/* 805CC544  4E 80 04 21 */	bctrl 
/* 805CC548  48 00 00 74 */	b lbl_805CC5BC
lbl_805CC54C:
/* 805CC54C  2C 00 00 01 */	cmpwi r0, 1
/* 805CC550  40 82 00 10 */	bne lbl_805CC560
/* 805CC554  38 00 00 01 */	li r0, 1
/* 805CC558  90 1F 00 04 */	stw r0, 4(r31)
/* 805CC55C  48 00 00 60 */	b lbl_805CC5BC
lbl_805CC560:
/* 805CC560  38 00 00 01 */	li r0, 1
/* 805CC564  7F E3 FB 78 */	mr r3, r31
/* 805CC568  98 05 0B B3 */	stb r0, 0xbb3(r5)
/* 805CC56C  38 80 00 00 */	li r4, 0
/* 805CC570  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805CC574  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CC578  7D 89 03 A6 */	mtctr r12
/* 805CC57C  4E 80 04 21 */	bctrl 
/* 805CC580  48 00 00 3C */	b lbl_805CC5BC
lbl_805CC584:
/* 805CC584  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CC588  40 82 00 14 */	bne lbl_805CC59C
/* 805CC58C  38 00 00 01 */	li r0, 1
/* 805CC590  90 1F 00 04 */	stw r0, 4(r31)
/* 805CC594  90 1F 00 30 */	stw r0, 0x30(r31)
/* 805CC598  48 00 00 24 */	b lbl_805CC5BC
lbl_805CC59C:
/* 805CC59C  2C 00 00 0C */	cmpwi r0, 0xc
/* 805CC5A0  40 82 00 1C */	bne lbl_805CC5BC
/* 805CC5A4  38 00 00 00 */	li r0, 0
/* 805CC5A8  38 60 00 03 */	li r3, 3
/* 805CC5AC  90 1F 00 04 */	stw r0, 4(r31)
/* 805CC5B0  38 00 00 01 */	li r0, 1
/* 805CC5B4  B0 7F 00 34 */	sth r3, 0x34(r31)
/* 805CC5B8  90 1F 00 30 */	stw r0, 0x30(r31)
lbl_805CC5BC:
/* 805CC5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC5C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CC5C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CC5C8  7C 08 03 A6 */	mtlr r0
/* 805CC5CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC5D0  4E 80 00 20 */	blr 
