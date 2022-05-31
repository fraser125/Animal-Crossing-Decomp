lbl_803E69BC:
/* 803E69BC  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803E69C0  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E69C4  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803E69C8  40 82 00 B8 */	bne lbl_803E6A80
/* 803E69CC  38 03 A0 00 */	addi r0, r3, -24576
/* 803E69D0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E69D4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 803E69D8  1C A0 26 B0 */	mulli r5, r0, 0x26b0
/* 803E69DC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E69E0  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803E69E4  7C 63 2A 14 */	add r3, r3, r5
/* 803E69E8  2C 00 00 28 */	cmpwi r0, 0x28
/* 803E69EC  3C 63 00 01 */	addis r3, r3, 1
/* 803E69F0  88 63 9D 0C */	lbz r3, -0x62f4(r3)
/* 803E69F4  54 63 E7 FE */	rlwinm r3, r3, 0x1c, 0x1f, 0x1f
/* 803E69F8  41 82 00 5C */	beq lbl_803E6A54
/* 803E69FC  40 80 00 1C */	bge lbl_803E6A18
/* 803E6A00  2C 00 00 16 */	cmpwi r0, 0x16
/* 803E6A04  41 82 00 3C */	beq lbl_803E6A40
/* 803E6A08  40 80 00 70 */	bge lbl_803E6A78
/* 803E6A0C  2C 00 00 15 */	cmpwi r0, 0x15
/* 803E6A10  40 80 00 1C */	bge lbl_803E6A2C
/* 803E6A14  48 00 00 64 */	b lbl_803E6A78
lbl_803E6A18:
/* 803E6A18  2C 00 00 2E */	cmpwi r0, 0x2e
/* 803E6A1C  40 80 00 5C */	bge lbl_803E6A78
/* 803E6A20  2C 00 00 2A */	cmpwi r0, 0x2a
/* 803E6A24  40 80 00 4C */	bge lbl_803E6A70
/* 803E6A28  48 00 00 40 */	b lbl_803E6A68
lbl_803E6A2C:
/* 803E6A2C  2C 03 00 00 */	cmpwi r3, 0
/* 803E6A30  38 60 01 04 */	li r3, 0x104
/* 803E6A34  4D 82 00 20 */	beqlr 
/* 803E6A38  38 60 01 1E */	li r3, 0x11e
/* 803E6A3C  4E 80 00 20 */	blr 
lbl_803E6A40:
/* 803E6A40  2C 03 00 00 */	cmpwi r3, 0
/* 803E6A44  38 60 00 F2 */	li r3, 0xf2
/* 803E6A48  4D 82 00 20 */	beqlr 
/* 803E6A4C  38 60 01 1F */	li r3, 0x11f
/* 803E6A50  4E 80 00 20 */	blr 
lbl_803E6A54:
/* 803E6A54  2C 03 00 00 */	cmpwi r3, 0
/* 803E6A58  38 60 01 1B */	li r3, 0x11b
/* 803E6A5C  4D 82 00 20 */	beqlr 
/* 803E6A60  38 60 01 20 */	li r3, 0x120
/* 803E6A64  4E 80 00 20 */	blr 
lbl_803E6A68:
/* 803E6A68  38 60 01 1C */	li r3, 0x11c
/* 803E6A6C  4E 80 00 20 */	blr 
lbl_803E6A70:
/* 803E6A70  38 60 01 21 */	li r3, 0x121
/* 803E6A74  4E 80 00 20 */	blr 
lbl_803E6A78:
/* 803E6A78  7C 83 23 78 */	mr r3, r4
/* 803E6A7C  4E 80 00 20 */	blr 
lbl_803E6A80:
/* 803E6A80  7C 83 23 78 */	mr r3, r4
/* 803E6A84  4E 80 00 20 */	blr 
