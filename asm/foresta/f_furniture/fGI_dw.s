lbl_8063DD00:
/* 8063DD00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8063DD04  7C 08 02 A6 */	mflr r0
/* 8063DD08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063DD0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DD10  4B A5 D1 BD */	bl func_8009AECC
/* 8063DD14  7C BE 2B 78 */	mr r30, r5
/* 8063DD18  7C 7D 1B 78 */	mr r29, r3
/* 8063DD1C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8063DD20  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063DD24  A0 9D 00 00 */	lhz r4, 0(r29)
/* 8063DD28  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063DD2C  83 9F 02 D0 */	lwz r28, 0x2d0(r31)
/* 8063DD30  38 84 FB B1 */	addi r4, r4, -1103
/* 8063DD34  38 7C 00 08 */	addi r3, r28, 8
/* 8063DD38  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 8063DD3C  54 9B 07 BE */	clrlwi r27, r4, 0x1e
/* 8063DD40  90 1C 00 00 */	stw r0, 0(r28)
/* 8063DD44  80 65 00 00 */	lwz r3, 0(r5)
/* 8063DD48  4B DC F6 8D */	bl _Matrix_to_Mtx_new
/* 8063DD4C  90 7C 00 04 */	stw r3, 4(r28)
/* 8063DD50  3C 80 80 6E */	lis r4, fGI_mat_table@ha /* 0x806DE568@ha */
/* 8063DD54  3C 60 80 6E */	lis r3, fGI_gfx_table@ha /* 0x806DE578@ha */
/* 8063DD58  3C A0 DE 00 */	lis r5, 0xde00
/* 8063DD5C  80 DF 02 D0 */	lwz r6, 0x2d0(r31)
/* 8063DD60  57 67 10 3A */	slwi r7, r27, 2
/* 8063DD64  38 84 E5 68 */	addi r4, r4, fGI_mat_table@l /* 0x806DE568@l */
/* 8063DD68  38 63 E5 78 */	addi r3, r3, fGI_gfx_table@l /* 0x806DE578@l */
/* 8063DD6C  38 06 00 08 */	addi r0, r6, 8
/* 8063DD70  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DD74  90 A6 00 00 */	stw r5, 0(r6)
/* 8063DD78  7C 04 38 2E */	lwzx r0, r4, r7
/* 8063DD7C  90 06 00 04 */	stw r0, 4(r6)
/* 8063DD80  80 9F 02 D0 */	lwz r4, 0x2d0(r31)
/* 8063DD84  38 04 00 08 */	addi r0, r4, 8
/* 8063DD88  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 8063DD8C  90 A4 00 00 */	stw r5, 0(r4)
/* 8063DD90  7C 03 38 2E */	lwzx r0, r3, r7
/* 8063DD94  90 04 00 04 */	stw r0, 4(r4)
/* 8063DD98  A0 1D 00 00 */	lhz r0, 0(r29)
/* 8063DD9C  28 00 04 52 */	cmplwi r0, 0x452
/* 8063DDA0  40 82 00 64 */	bne lbl_8063DE04
/* 8063DDA4  83 BF 02 E0 */	lwz r29, 0x2e0(r31)
/* 8063DDA8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8063DDAC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8063DDB0  38 7D 00 08 */	addi r3, r29, 8
/* 8063DDB4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063DDB8  90 1D 00 00 */	stw r0, 0(r29)
/* 8063DDBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 8063DDC0  4B DC F6 15 */	bl _Matrix_to_Mtx_new
/* 8063DDC4  90 7D 00 04 */	stw r3, 4(r29)
/* 8063DDC8  3C 80 80 9E */	lis r4, obj_rod2T_mat_model@ha /* 0x809E77D0@ha */
/* 8063DDCC  3C 60 80 9E */	lis r3, obj_rod2T_gfx_model@ha /* 0x809E7818@ha */
/* 8063DDD0  3C A0 DE 00 */	lis r5, 0xde00
/* 8063DDD4  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 8063DDD8  38 84 77 D0 */	addi r4, r4, obj_rod2T_mat_model@l /* 0x809E77D0@l */
/* 8063DDDC  38 03 78 18 */	addi r0, r3, obj_rod2T_gfx_model@l /* 0x809E7818@l */
/* 8063DDE0  38 66 00 08 */	addi r3, r6, 8
/* 8063DDE4  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063DDE8  90 A6 00 00 */	stw r5, 0(r6)
/* 8063DDEC  90 86 00 04 */	stw r4, 4(r6)
/* 8063DDF0  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 8063DDF4  38 64 00 08 */	addi r3, r4, 8
/* 8063DDF8  90 7F 02 E0 */	stw r3, 0x2e0(r31)
/* 8063DDFC  90 A4 00 00 */	stw r5, 0(r4)
/* 8063DE00  90 04 00 04 */	stw r0, 4(r4)
lbl_8063DE04:
/* 8063DE04  39 61 00 20 */	addi r11, r1, 0x20
/* 8063DE08  4B A5 D1 11 */	bl func_8009AF18
/* 8063DE0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8063DE10  7C 08 03 A6 */	mtlr r0
/* 8063DE14  38 21 00 20 */	addi r1, r1, 0x20
/* 8063DE18  4E 80 00 20 */	blr 
