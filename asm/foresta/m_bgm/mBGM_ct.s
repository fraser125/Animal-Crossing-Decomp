lbl_8037CD40:
/* 8037CD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CD44  7C 08 02 A6 */	mflr r0
/* 8037CD48  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CD50  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD54  4B FF BD 95 */	bl mBGMClock_ct
/* 8037CD58  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD5C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD60  38 63 00 08 */	addi r3, r3, 8
/* 8037CD64  4B FF BF 59 */	bl mBGMDemo_ct
/* 8037CD68  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD6C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD70  38 63 00 14 */	addi r3, r3, 0x14
/* 8037CD74  4B FF C4 35 */	bl mBGMRoom_ct
/* 8037CD78  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD7C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD80  38 63 00 28 */	addi r3, r3, 0x28
/* 8037CD84  4B FF C6 C9 */	bl mBGMTime_ct
/* 8037CD88  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD8C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CD90  38 63 00 30 */	addi r3, r3, 0x30
/* 8037CD94  4B FF C8 DD */	bl mBGMFieldSuddenEv_ct
/* 8037CD98  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CD9C  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CDA0  38 63 00 38 */	addi r3, r3, 0x38
/* 8037CDA4  4B FF D7 6D */	bl mBGMFieldSchedEv_ct
/* 8037CDA8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CDAC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CDB0  38 63 01 58 */	addi r3, r3, 0x158
/* 8037CDB4  4B FF D9 85 */	bl mBGMFieldNorm_ct
/* 8037CDB8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CDBC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CDC0  38 63 01 64 */	addi r3, r3, 0x164
/* 8037CDC4  4B FF FB 41 */	bl mBGMPsComp_ct
/* 8037CDC8  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037CDCC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037CDD0  38 63 02 FC */	addi r3, r3, 0x2fc
/* 8037CDD4  4B FF FC D5 */	bl mBGMForce_ct
/* 8037CDD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CDDC  7C 08 03 A6 */	mtlr r0
/* 8037CDE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CDE4  4E 80 00 20 */	blr 
