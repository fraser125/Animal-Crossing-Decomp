lbl_80415C68:
/* 80415C68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415C6C  7C 08 02 A6 */	mflr r0
/* 80415C70  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80415C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415C78  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80415C7C  7C 60 26 70 */	srawi r0, r3, 4
/* 80415C80  3C A5 00 02 */	addis r5, r5, 2
/* 80415C84  7C C0 01 94 */	addze r6, r0
/* 80415C88  80 E5 60 8C */	lwz r7, 0x608c(r5)
/* 80415C8C  7C 80 26 70 */	srawi r0, r4, 4
/* 80415C90  7C 00 01 94 */	addze r0, r0
/* 80415C94  54 C5 20 36 */	slwi r5, r6, 4
/* 80415C98  54 00 20 36 */	slwi r0, r0, 4
/* 80415C9C  28 07 00 00 */	cmplwi r7, 0
/* 80415CA0  7C A5 18 50 */	subf r5, r5, r3
/* 80415CA4  7C C0 20 50 */	subf r6, r0, r4
/* 80415CA8  41 82 00 40 */	beq lbl_80415CE8
/* 80415CAC  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 80415CB0  38 61 00 08 */	addi r3, r1, 8
/* 80415CB4  38 80 00 00 */	li r4, 0
/* 80415CB8  38 E0 00 00 */	li r7, 0
/* 80415CBC  7D 89 03 A6 */	mtctr r12
/* 80415CC0  4E 80 04 21 */	bctrl 
/* 80415CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80415CC8  41 82 00 20 */	beq lbl_80415CE8
/* 80415CCC  A0 61 00 08 */	lhz r3, 8(r1)
/* 80415CD0  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 80415CD4  2C 00 00 01 */	cmpwi r0, 1
/* 80415CD8  41 82 00 18 */	beq lbl_80415CF0
/* 80415CDC  2C 00 00 03 */	cmpwi r0, 3
/* 80415CE0  40 82 00 08 */	bne lbl_80415CE8
/* 80415CE4  48 00 00 0C */	b lbl_80415CF0
lbl_80415CE8:
/* 80415CE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80415CEC  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_80415CF0:
/* 80415CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415CF4  7C 08 03 A6 */	mtlr r0
/* 80415CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80415CFC  4E 80 00 20 */	blr 
