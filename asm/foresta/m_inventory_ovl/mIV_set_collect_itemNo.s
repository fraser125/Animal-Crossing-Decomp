lbl_805E12DC:
/* 805E12DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E12E0  7C 08 02 A6 */	mflr r0
/* 805E12E4  2C 04 00 02 */	cmpwi r4, 2
/* 805E12E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E12EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E12F0  40 82 00 68 */	bne lbl_805E1358
/* 805E12F4  3C 80 80 6D */	lis r4, mIV_insect_collect_list@ha /* 0x806CD2F0@ha */
/* 805E12F8  38 84 D2 F0 */	addi r4, r4, mIV_insect_collect_list@l /* 0x806CD2F0@l */
/* 805E12FC  7F E4 18 AE */	lbzx r31, r4, r3
/* 805E1300  57 E3 10 3A */	slwi r3, r31, 2
/* 805E1304  38 03 1B C8 */	addi r0, r3, 0x1bc8
/* 805E1308  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805E130C  4B E0 64 85 */	bl mRmTp_FtrItemNo2FtrIdx
/* 805E1310  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805E1314  7C 64 2E 70 */	srawi r4, r3, 5
/* 805E1318  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805E131C  38 1F 2D 00 */	addi r0, r31, 0x2d00
/* 805E1320  3C C5 00 02 */	addis r6, r5, 2
/* 805E1324  54 85 10 3A */	slwi r5, r4, 2
/* 805E1328  80 C6 61 3C */	lwz r6, 0x613c(r6)
/* 805E132C  54 63 06 FE */	clrlwi r3, r3, 0x1b
/* 805E1330  38 80 00 01 */	li r4, 1
/* 805E1334  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805E1338  7C A6 2A 14 */	add r5, r6, r5
/* 805E133C  80 A5 11 08 */	lwz r5, 0x1108(r5)
/* 805E1340  7C 83 18 30 */	slw r3, r4, r3
/* 805E1344  7C A3 18 38 */	and r3, r5, r3
/* 805E1348  20 63 00 00 */	subfic r3, r3, 0
/* 805E134C  7C 63 19 10 */	subfe r3, r3, r3
/* 805E1350  7C 03 18 38 */	and r3, r0, r3
/* 805E1354  48 00 00 5C */	b lbl_805E13B0
lbl_805E1358:
/* 805E1358  3C 80 80 6D */	lis r4, data_806CD2C8@ha /* 0x806CD2C8@ha */
/* 805E135C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805E1360  38 C4 D2 C8 */	addi r6, r4, data_806CD2C8@l /* 0x806CD2C8@l */
/* 805E1364  38 80 00 01 */	li r4, 1
/* 805E1368  7C 66 18 AE */	lbzx r3, r6, r3
/* 805E136C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805E1370  3C A5 00 02 */	addis r5, r5, 2
/* 805E1374  54 67 10 3A */	slwi r7, r3, 2
/* 805E1378  80 C5 61 3C */	lwz r6, 0x613c(r5)
/* 805E137C  38 07 0C 68 */	addi r0, r7, 0xc68
/* 805E1380  54 05 F0 BE */	srwi r5, r0, 2
/* 805E1384  7C A5 2E 70 */	srawi r5, r5, 5
/* 805E1388  54 00 F6 FE */	rlwinm r0, r0, 0x1e, 0x1b, 0x1f
/* 805E138C  54 A5 10 3A */	slwi r5, r5, 2
/* 805E1390  7C A6 2A 14 */	add r5, r6, r5
/* 805E1394  7C 80 00 30 */	slw r0, r4, r0
/* 805E1398  80 85 11 08 */	lwz r4, 0x1108(r5)
/* 805E139C  7C 80 00 39 */	and. r0, r4, r0
/* 805E13A0  41 82 00 0C */	beq lbl_805E13AC
/* 805E13A4  4B DE 7C C5 */	bl mNT_FishIdx2FishItemNo
/* 805E13A8  48 00 00 08 */	b lbl_805E13B0
lbl_805E13AC:
/* 805E13AC  38 60 00 00 */	li r3, 0
lbl_805E13B0:
/* 805E13B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E13B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E13B8  7C 08 03 A6 */	mtlr r0
/* 805E13BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805E13C0  4E 80 00 20 */	blr 
