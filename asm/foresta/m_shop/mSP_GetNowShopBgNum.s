lbl_803EA21C:
/* 803EA21C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA220  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 803EA224  80 64 00 14 */	lwz r3, 0x14(r4)
/* 803EA228  38 03 FF F7 */	addi r0, r3, -9
/* 803EA22C  28 00 00 14 */	cmplwi r0, 0x14
/* 803EA230  41 81 00 94 */	bgt lbl_803EA2C4
/* 803EA234  3C 60 80 66 */	lis r3, lit_1267@ha /* 0x8065D868@ha */
/* 803EA238  54 00 10 3A */	slwi r0, r0, 2
/* 803EA23C  38 63 D8 68 */	addi r3, r3, lit_1267@l /* 0x8065D868@l */
/* 803EA240  7C 03 00 2E */	lwzx r0, r3, r0
/* 803EA244  7C 09 03 A6 */	mtctr r0
/* 803EA248  4E 80 04 20 */	bctr 
lbl_803EA24C:
/* 803EA24C  3C 84 00 03 */	addis r4, r4, 3
/* 803EA250  38 60 00 F8 */	li r3, 0xf8
/* 803EA254  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 803EA258  2C 00 00 03 */	cmpwi r0, 3
/* 803EA25C  4C 82 00 20 */	bnelr 
/* 803EA260  38 60 00 FA */	li r3, 0xfa
/* 803EA264  4E 80 00 20 */	blr 
lbl_803EA268:
/* 803EA268  3C 84 00 03 */	addis r4, r4, 3
/* 803EA26C  38 60 00 FE */	li r3, 0xfe
/* 803EA270  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 803EA274  2C 00 00 03 */	cmpwi r0, 3
/* 803EA278  4C 82 00 20 */	bnelr 
/* 803EA27C  38 60 00 FB */	li r3, 0xfb
/* 803EA280  4E 80 00 20 */	blr 
lbl_803EA284:
/* 803EA284  3C 84 00 03 */	addis r4, r4, 3
/* 803EA288  38 60 01 02 */	li r3, 0x102
/* 803EA28C  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 803EA290  2C 00 00 03 */	cmpwi r0, 3
/* 803EA294  4C 82 00 20 */	bnelr 
/* 803EA298  38 60 00 FC */	li r3, 0xfc
/* 803EA29C  4E 80 00 20 */	blr 
lbl_803EA2A0:
/* 803EA2A0  3C 84 00 03 */	addis r4, r4, 3
/* 803EA2A4  38 60 01 00 */	li r3, 0x100
/* 803EA2A8  80 04 88 9C */	lwz r0, -0x7764(r4)
/* 803EA2AC  2C 00 00 03 */	cmpwi r0, 3
/* 803EA2B0  4C 82 00 20 */	bnelr 
/* 803EA2B4  38 60 00 FD */	li r3, 0xfd
/* 803EA2B8  4E 80 00 20 */	blr 
lbl_803EA2BC:
/* 803EA2BC  38 60 01 01 */	li r3, 0x101
/* 803EA2C0  4E 80 00 20 */	blr 
lbl_803EA2C4:
/* 803EA2C4  38 60 00 FE */	li r3, 0xfe
/* 803EA2C8  4E 80 00 20 */	blr 
