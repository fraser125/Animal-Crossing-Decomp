lbl_80379FCC:
/* 80379FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80379FD0  7C 08 02 A6 */	mflr r0
/* 80379FD4  3C 80 00 43 */	lis r4, 0x0043 /* 0x00432000@ha */
/* 80379FD8  3C C0 81 13 */	lis r6, data_811351C0@ha /* 0x811351C0@ha */
/* 80379FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80379FE0  3C A0 04 00 */	lis r5, 0x0400 /* 0x03FFFFFF@ha */
/* 80379FE4  38 84 20 00 */	addi r4, r4, 0x2000 /* 0x00432000@l */
/* 80379FE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80379FEC  7C 7F 1B 78 */	mr r31, r3
/* 80379FF0  38 66 51 C0 */	addi r3, r6, data_811351C0@l /* 0x811351C0@l */
/* 80379FF4  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x03FFFFFF@l */
/* 80379FF8  3C A0 00 44 */	lis r5, 0x44
/* 80379FFC  4B FF EA 39 */	bl mBGMClock_range_time_check
/* 8037A000  2C 03 00 00 */	cmpwi r3, 0
/* 8037A004  41 82 00 14 */	beq lbl_8037A018
/* 8037A008  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037A00C  60 00 00 01 */	ori r0, r0, 1
/* 8037A010  90 1F 00 00 */	stw r0, 0(r31)
/* 8037A014  48 00 00 10 */	b lbl_8037A024
lbl_8037A018:
/* 8037A018  80 1F 00 00 */	lwz r0, 0(r31)
/* 8037A01C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8037A020  90 1F 00 00 */	stw r0, 0(r31)
lbl_8037A024:
/* 8037A024  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A028  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A02C  7C 08 03 A6 */	mtlr r0
/* 8037A030  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A034  4E 80 00 20 */	blr 
