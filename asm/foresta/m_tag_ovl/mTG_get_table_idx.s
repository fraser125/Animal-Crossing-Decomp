lbl_805EFB60:
/* 805EFB60  80 03 00 38 */	lwz r0, 0x38(r3)
/* 805EFB64  3C 80 80 6D */	lis r4, mTG_table_data@ha /* 0x806CF99C@ha */
/* 805EFB68  38 84 F9 9C */	addi r4, r4, mTG_table_data@l /* 0x806CF99C@l */
/* 805EFB6C  80 A3 00 40 */	lwz r5, 0x40(r3)
/* 805EFB70  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805EFB74  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 805EFB78  7C 04 02 AE */	lhax r0, r4, r0
/* 805EFB7C  7C 05 01 D6 */	mullw r0, r5, r0
/* 805EFB80  7C 83 02 14 */	add r4, r3, r0
/* 805EFB84  54 83 0F FE */	srwi r3, r4, 0x1f
/* 805EFB88  38 03 FF FF */	addi r0, r3, -1
/* 805EFB8C  7C 83 00 38 */	and r3, r4, r0
/* 805EFB90  4E 80 00 20 */	blr 
