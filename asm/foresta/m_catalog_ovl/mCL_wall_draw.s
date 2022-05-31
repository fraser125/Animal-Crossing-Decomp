lbl_805CAB78:
/* 805CAB78  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060028@ha */
/* 805CAB7C  81 43 08 5C */	lwz r10, 0x85c(r3)
/* 805CAB80  81 65 02 D0 */	lwz r11, 0x2d0(r5)
/* 805CAB84  38 04 00 28 */	addi r0, r4, 0x0028 /* 0xDB060028@l */
/* 805CAB88  3C 60 80 A3 */	lis r3, mCL_rom_myhome1_wall_model@ha /* 0x80A341F0@ha */
/* 805CAB8C  39 24 00 20 */	addi r9, r4, 0x20
/* 805CAB90  90 0B 00 00 */	stw r0, 0(r11)
/* 805CAB94  39 0A 00 20 */	addi r8, r10, 0x20
/* 805CAB98  38 E4 00 24 */	addi r7, r4, 0x24
/* 805CAB9C  38 CA 08 20 */	addi r6, r10, 0x820
/* 805CABA0  91 4B 00 04 */	stw r10, 4(r11)
/* 805CABA4  3C 80 DE 00 */	lis r4, 0xde00
/* 805CABA8  38 03 41 F0 */	addi r0, r3, mCL_rom_myhome1_wall_model@l /* 0x80A341F0@l */
/* 805CABAC  91 2B 00 08 */	stw r9, 8(r11)
/* 805CABB0  91 0B 00 0C */	stw r8, 0xc(r11)
/* 805CABB4  90 EB 00 10 */	stw r7, 0x10(r11)
/* 805CABB8  90 CB 00 14 */	stw r6, 0x14(r11)
/* 805CABBC  39 6B 00 18 */	addi r11, r11, 0x18
/* 805CABC0  7D 63 5B 78 */	mr r3, r11
/* 805CABC4  90 8B 00 00 */	stw r4, 0(r11)
/* 805CABC8  39 6B 00 08 */	addi r11, r11, 8
/* 805CABCC  90 03 00 04 */	stw r0, 4(r3)
/* 805CABD0  91 65 02 D0 */	stw r11, 0x2d0(r5)
/* 805CABD4  4E 80 00 20 */	blr 
