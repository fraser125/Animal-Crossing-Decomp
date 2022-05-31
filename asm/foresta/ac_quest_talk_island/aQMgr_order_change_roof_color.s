lbl_8048E8DC:
/* 8048E8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E8E0  7C 08 02 A6 */	mflr r0
/* 8048E8E4  38 80 00 00 */	li r4, 0
/* 8048E8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E8EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048E8F0  3B E0 00 00 */	li r31, 0
/* 8048E8F4  A0 63 01 B6 */	lhz r3, 0x1b6(r3)
/* 8048E8F8  28 03 00 00 */	cmplwi r3, 0
/* 8048E8FC  41 82 00 14 */	beq lbl_8048E910
/* 8048E900  28 03 00 10 */	cmplwi r3, 0x10
/* 8048E904  41 81 00 0C */	bgt lbl_8048E910
/* 8048E908  38 03 FF FF */	addi r0, r3, -1
/* 8048E90C  54 1F 06 3E */	clrlwi r31, r0, 0x18
lbl_8048E910:
/* 8048E910  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E914  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048E918  3C 63 00 02 */	addis r3, r3, 2
/* 8048E91C  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8048E920  28 03 00 04 */	cmplwi r3, 4
/* 8048E924  40 80 00 20 */	bge lbl_8048E944
/* 8048E928  4B F2 4C 91 */	bl mHS_get_arrange_idx
/* 8048E92C  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8048E930  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E934  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8048E938  7C 60 22 14 */	add r3, r0, r4
/* 8048E93C  3C 83 00 01 */	addis r4, r3, 1
/* 8048E940  38 84 9C E8 */	addi r4, r4, -25368
lbl_8048E944:
/* 8048E944  28 04 00 00 */	cmplwi r4, 0
/* 8048E948  41 82 00 28 */	beq lbl_8048E970
/* 8048E94C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8048E950  9B E4 00 2C */	stb r31, 0x2c(r4)
/* 8048E954  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8048E958  3C 63 00 02 */	addis r3, r3, 2
/* 8048E95C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8048E960  80 03 23 48 */	lwz r0, 0x2348(r3)
/* 8048E964  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8048E968  40 82 00 08 */	bne lbl_8048E970
/* 8048E96C  9B E4 00 2E */	stb r31, 0x2e(r4)
lbl_8048E970:
/* 8048E970  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048E978  7C 08 03 A6 */	mtlr r0
/* 8048E97C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E980  4E 80 00 20 */	blr 
