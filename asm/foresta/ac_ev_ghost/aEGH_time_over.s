lbl_805204C4:
/* 805204C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805204C8  38 00 38 40 */	li r0, 0x3840
/* 805204CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805204D0  3C 63 00 02 */	addis r3, r3, 2
/* 805204D4  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 805204D8  7C 80 02 78 */	xor r0, r4, r0
/* 805204DC  7C 03 0E 70 */	srawi r3, r0, 1
/* 805204E0  7C 00 20 38 */	and r0, r0, r4
/* 805204E4  7C 00 18 50 */	subf r0, r0, r3
/* 805204E8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805204EC  4E 80 00 20 */	blr 