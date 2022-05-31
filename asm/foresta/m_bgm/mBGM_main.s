lbl_8037CC70:
/* 8037CC70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CC74  7C 08 02 A6 */	mflr r0
/* 8037CC78  3C 80 81 13 */	lis r4, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CC84  7C 7F 1B 78 */	mr r31, r3
/* 8037CC88  38 64 51 C0 */	addi r3, r4, data_811351C0@l /* 0x811351C0@l */
/* 8037CC8C  7F E4 FB 78 */	mr r4, r31
/* 8037CC90  4B FF BE 39 */	bl mBGMClock_move
/* 8037CC94  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CC98  7F E4 FB 78 */	mr r4, r31
/* 8037CC9C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CCA0  38 63 00 08 */	addi r3, r3, 8
/* 8037CCA4  4B FF BF 99 */	bl mBGMDemo_move
/* 8037CCA8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CCAC  7F E4 FB 78 */	mr r4, r31
/* 8037CCB0  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CCB4  38 63 00 14 */	addi r3, r3, 0x14
/* 8037CCB8  4B FF C4 55 */	bl mBGMRoom_move
/* 8037CCBC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CCC0  7F E4 FB 78 */	mr r4, r31
/* 8037CCC4  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CCC8  38 63 00 30 */	addi r3, r3, 0x30
/* 8037CCCC  4B FF C9 61 */	bl mBGMFieldSuddenEv_move
/* 8037CCD0  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CCD4  7F E4 FB 78 */	mr r4, r31
/* 8037CCD8  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CCDC  38 63 00 38 */	addi r3, r3, 0x38
/* 8037CCE0  4B FF D7 E5 */	bl mBGMFieldSchedEv_move
/* 8037CCE4  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CCE8  7F E4 FB 78 */	mr r4, r31
/* 8037CCEC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CCF0  38 63 01 58 */	addi r3, r3, 0x158
/* 8037CCF4  4B FF D9 6D */	bl mBGMFieldNorm_move
/* 8037CCF8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CCFC  7F E4 FB 78 */	mr r4, r31
/* 8037CD00  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD04  38 63 00 28 */	addi r3, r3, 0x28
/* 8037CD08  4B FF C7 1D */	bl mBGMTime_move
/* 8037CD0C  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD10  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD14  4B FF FE 8D */	bl mBGM_main_control
/* 8037CD18  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD1C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD20  38 63 02 FC */	addi r3, r3, 0x2fc
/* 8037CD24  4B FF FD 51 */	bl mBGMForce_move
/* 8037CD28  4B FF FE F9 */	bl mBGM_weather_set
/* 8037CD2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CD34  7C 08 03 A6 */	mtlr r0
/* 8037CD38  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CD3C  4E 80 00 20 */	blr 
