lbl_8062C134:
/* 8062C134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C138  7C 08 02 A6 */	mflr r0
/* 8062C13C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C140  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062C144  7C 7F 1B 78 */	mr r31, r3
/* 8062C148  93 C1 00 08 */	stw r30, 8(r1)
/* 8062C14C  80 03 02 18 */	lwz r0, 0x218(r3)
/* 8062C150  83 C3 02 1C */	lwz r30, 0x21c(r3)
/* 8062C154  2C 00 00 00 */	cmpwi r0, 0
/* 8062C158  40 82 00 DC */	bne lbl_8062C234
/* 8062C15C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 8062C160  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 8062C164  4B D6 9D AD */	bl chkTrigger
/* 8062C168  2C 03 00 00 */	cmpwi r3, 0
/* 8062C16C  41 82 00 3C */	beq lbl_8062C1A8
/* 8062C170  2C 1E 00 00 */	cmpwi r30, 0
/* 8062C174  80 7F 02 14 */	lwz r3, 0x214(r31)
/* 8062C178  40 82 00 0C */	bne lbl_8062C184
/* 8062C17C  38 00 00 01 */	li r0, 1
/* 8062C180  90 1F 02 1C */	stw r0, 0x21c(r31)
lbl_8062C184:
/* 8062C184  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 8062C188  2C 00 00 01 */	cmpwi r0, 1
/* 8062C18C  40 82 00 1C */	bne lbl_8062C1A8
/* 8062C190  54 60 10 3A */	slwi r0, r3, 2
/* 8062C194  7F E3 FB 78 */	mr r3, r31
/* 8062C198  7C 9F 02 14 */	add r4, r31, r0
/* 8062C19C  81 84 02 00 */	lwz r12, 0x200(r4)
/* 8062C1A0  7D 89 03 A6 */	mtctr r12
/* 8062C1A4  4E 80 04 21 */	bctrl 
lbl_8062C1A8:
/* 8062C1A8  38 60 04 00 */	li r3, 0x400
/* 8062C1AC  4B D6 9D 65 */	bl chkTrigger
/* 8062C1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8062C1B4  41 82 00 38 */	beq lbl_8062C1EC
/* 8062C1B8  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 8062C1BC  2C 00 00 00 */	cmpwi r0, 0
/* 8062C1C0  40 82 00 2C */	bne lbl_8062C1EC
/* 8062C1C4  88 1F 02 87 */	lbz r0, 0x287(r31)
/* 8062C1C8  28 00 00 01 */	cmplwi r0, 1
/* 8062C1CC  40 82 00 14 */	bne lbl_8062C1E0
/* 8062C1D0  38 7F 02 14 */	addi r3, r31, 0x214
/* 8062C1D4  38 80 00 05 */	li r4, 5
/* 8062C1D8  4B FF FF 15 */	bl player_select_next_mode
/* 8062C1DC  48 00 00 10 */	b lbl_8062C1EC
lbl_8062C1E0:
/* 8062C1E0  38 7F 02 14 */	addi r3, r31, 0x214
/* 8062C1E4  38 80 00 04 */	li r4, 4
/* 8062C1E8  4B FF FF 05 */	bl player_select_next_mode
lbl_8062C1EC:
/* 8062C1EC  38 60 08 00 */	li r3, 0x800
/* 8062C1F0  4B D6 9D 21 */	bl chkTrigger
/* 8062C1F4  2C 03 00 00 */	cmpwi r3, 0
/* 8062C1F8  41 82 00 88 */	beq lbl_8062C280
/* 8062C1FC  80 1F 02 1C */	lwz r0, 0x21c(r31)
/* 8062C200  2C 00 00 00 */	cmpwi r0, 0
/* 8062C204  40 82 00 7C */	bne lbl_8062C280
/* 8062C208  88 1F 02 87 */	lbz r0, 0x287(r31)
/* 8062C20C  28 00 00 01 */	cmplwi r0, 1
/* 8062C210  40 82 00 14 */	bne lbl_8062C224
/* 8062C214  38 7F 02 14 */	addi r3, r31, 0x214
/* 8062C218  38 80 00 05 */	li r4, 5
/* 8062C21C  4B FF FE F5 */	bl player_select_back_mode
/* 8062C220  48 00 00 60 */	b lbl_8062C280
lbl_8062C224:
/* 8062C224  38 7F 02 14 */	addi r3, r31, 0x214
/* 8062C228  38 80 00 04 */	li r4, 4
/* 8062C22C  4B FF FE E5 */	bl player_select_back_mode
/* 8062C230  48 00 00 50 */	b lbl_8062C280
lbl_8062C234:
/* 8062C234  2C 00 00 01 */	cmpwi r0, 1
/* 8062C238  40 82 00 28 */	bne lbl_8062C260
/* 8062C23C  4B FF FE 89 */	bl player_select_init_after
/* 8062C240  38 00 00 00 */	li r0, 0
/* 8062C244  3C 60 80 63 */	lis r3, select_init@ha /* 0x80629AA8@ha */
/* 8062C248  98 1F 00 9F */	stb r0, 0x9f(r31)
/* 8062C24C  38 63 9A A8 */	addi r3, r3, select_init@l /* 0x80629AA8@l */
/* 8062C250  38 00 02 38 */	li r0, 0x238
/* 8062C254  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8062C258  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8062C25C  48 00 00 24 */	b lbl_8062C280
lbl_8062C260:
/* 8062C260  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8062C264  38 80 FF FF */	li r4, -1
/* 8062C268  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8062C26C  38 00 00 00 */	li r0, 0
/* 8062C270  3C 63 00 02 */	addis r3, r3, 2
/* 8062C274  90 83 66 A4 */	stw r4, 0x66a4(r3)
/* 8062C278  90 1F 02 18 */	stw r0, 0x218(r31)
/* 8062C27C  90 1F 02 1C */	stw r0, 0x21c(r31)
lbl_8062C280:
/* 8062C280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062C288  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062C28C  7C 08 03 A6 */	mtlr r0
/* 8062C290  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C294  4E 80 00 20 */	blr 
