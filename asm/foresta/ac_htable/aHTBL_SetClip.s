lbl_805B11E0:
/* 805B11E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B11E4  7C 08 02 A6 */	mflr r0
/* 805B11E8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B11EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B11F0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805B11F4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805B11F8  7C 7E 1B 78 */	mr r30, r3
/* 805B11FC  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 805B1200  3F E3 00 02 */	addis r31, r3, 2
/* 805B1204  80 1F 60 38 */	lwz r0, 0x6038(r31)
/* 805B1208  28 00 00 00 */	cmplwi r0, 0
/* 805B120C  40 82 00 B8 */	bne lbl_805B12C4
/* 805B1210  38 60 00 14 */	li r3, 0x14
/* 805B1214  4B E0 B2 49 */	bl zelda_malloc
/* 805B1218  28 03 00 00 */	cmplwi r3, 0
/* 805B121C  90 7F 60 38 */	stw r3, 0x6038(r31)
/* 805B1220  41 82 00 A4 */	beq lbl_805B12C4
/* 805B1224  80 DE 00 28 */	lwz r6, 0x28(r30)
/* 805B1228  38 80 00 14 */	li r4, 0x14
/* 805B122C  80 BE 00 2C */	lwz r5, 0x2c(r30)
/* 805B1230  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B1234  90 C1 00 14 */	stw r6, 0x14(r1)
/* 805B1238  90 A1 00 18 */	stw r5, 0x18(r1)
/* 805B123C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B1240  4B AA BE 29 */	bl bzero
/* 805B1244  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064A7C0@ha */
/* 805B1248  80 01 00 18 */	lwz r0, 0x18(r1)
/* 805B124C  38 A3 A7 C0 */	addi r5, r3, lit_489@l /* 0x8064A7C0@l */
/* 805B1250  3C 60 80 65 */	lis r3, lit_490@ha /* 0x8064A7C4@ha */
/* 805B1254  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805B1258  38 83 A7 C4 */	addi r4, r3, lit_490@l /* 0x8064A7C4@l */
/* 805B125C  C0 25 00 00 */	lfs f1, 0(r5)
/* 805B1260  38 61 00 08 */	addi r3, r1, 8
/* 805B1264  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805B1268  EC 42 08 2A */	fadds f2, f2, f1
/* 805B126C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B1270  EC 00 08 2A */	fadds f0, f0, f1
/* 805B1274  C0 24 00 00 */	lfs f1, 0(r4)
/* 805B1278  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 805B127C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805B1280  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B1284  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B1288  90 81 00 08 */	stw r4, 8(r1)
/* 805B128C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B1290  4B DD E5 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805B1294  3C 80 80 5B */	lis r4, aHTBL_SearchPickUpItemLayer2@ha /* 0x805B1014@ha */
/* 805B1298  80 7F 60 38 */	lwz r3, 0x6038(r31)
/* 805B129C  38 04 10 14 */	addi r0, r4, aHTBL_SearchPickUpItemLayer2@l /* 0x805B1014@l */
/* 805B12A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805B12A4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805B12A8  90 03 00 00 */	stw r0, 0(r3)
/* 805B12AC  80 61 00 18 */	lwz r3, 0x18(r1)
/* 805B12B0  80 BF 60 38 */	lwz r5, 0x6038(r31)
/* 805B12B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805B12B8  90 85 00 04 */	stw r4, 4(r5)
/* 805B12BC  90 65 00 08 */	stw r3, 8(r5)
/* 805B12C0  90 05 00 0C */	stw r0, 0xc(r5)
lbl_805B12C4:
/* 805B12C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B12C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805B12CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805B12D0  7C 08 03 A6 */	mtlr r0
/* 805B12D4  38 21 00 30 */	addi r1, r1, 0x30
/* 805B12D8  4E 80 00 20 */	blr 
