[CCode (cprefix="CS_")]
namespace Capstone {
	[CCode (cname="cs_mips", cheader_filename="mips.h")]
	public struct MIPS {
		uint8 op_count;
		MipsOp operands[8];
	}

	[CCode (cname="cs_mips_op", cheader_filename="mips.h")]
	public struct MipsOp {
		MipsOpType type;
		// union
		uint reg;
		int64 imm;
		MipsOpMem mem;
	}

	[CCode (cname="mips_op_type", cprefix="MIPS_OP_", cheader_filename="mips.h")]
	public enum MipsOpType {
		INVALID = 0,
		REG = 1,
		IMM = 2,
		MEM = 3
	}

	[CCode (cname="mips_op_mem", cheader_filename="mips.h")]
	public struct MipsOpMem {
		uint base;
		int64 disp;
	}

	[CCode (cname="mips_insn", cprefix="MIPS_INS_", cheader_filename="mips.h")]
	public enum MipsInsn {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js mips mips_insn 2>/dev/null
		*/
		INVALID = 0,
		ABSQ_S = 1,
		ADD = 2,
		ADDQH = 3,
		ADDQH_R = 4,
		ADDQ = 5,
		ADDQ_S = 6,
		ADDSC = 7,
		ADDS_A = 8,
		ADDS_S = 9,
		ADDS_U = 10,
		ADDUH = 11,
		ADDUH_R = 12,
		ADDU = 13,
		ADDU_S = 14,
		ADDVI = 15,
		ADDV = 16,
		ADDWC = 17,
		ADD_A = 18,
		ADDI = 19,
		ADDIU = 20,
		AND = 21,
		ANDI = 22,
		APPEND = 23,
		ASUB_S = 24,
		ASUB_U = 25,
		AVER_S = 26,
		AVER_U = 27,
		AVE_S = 28,
		AVE_U = 29,
		BALIGN = 30,
		BC1F = 31,
		BC1T = 32,
		BCLRI = 33,
		BCLR = 34,
		BEQ = 35,
		BGEZ = 36,
		BGEZAL = 37,
		BGTZ = 38,
		BINSLI = 39,
		BINSL = 40,
		BINSRI = 41,
		BINSR = 42,
		BITREV = 43,
		BLEZ = 44,
		BLTZ = 45,
		BLTZAL = 46,
		BMNZI = 47,
		BMNZ = 48,
		BMZI = 49,
		BMZ = 50,
		BNE = 51,
		BNEGI = 52,
		BNEG = 53,
		BNZ = 54,
		BPOSGE32 = 55,
		BREAK = 56,
		BSELI = 57,
		BSEL = 58,
		BSETI = 59,
		BSET = 60,
		BZ = 61,
		BEQZ = 62,
		B = 63,
		BNEZ = 64,
		BTEQZ = 65,
		BTNEZ = 66,
		CEIL = 67,
		CEQI = 68,
		CEQ = 69,
		CFC1 = 70,
		CFCMSA = 71,
		CLEI_S = 72,
		CLEI_U = 73,
		CLE_S = 74,
		CLE_U = 75,
		CLO = 76,
		CLTI_S = 77,
		CLTI_U = 78,
		CLT_S = 79,
		CLT_U = 80,
		CLZ = 81,
		CMPGDU = 82,
		CMPGU = 83,
		CMPU = 84,
		CMP = 85,
		COPY_S = 86,
		COPY_U = 87,
		CTC1 = 88,
		CTCMSA = 89,
		CVT = 90,
		C = 91,
		CMPI = 92,
		DADD = 93,
		DADDI = 94,
		DADDIU = 95,
		DADDU = 96,
		DCLO = 97,
		DCLZ = 98,
		DERET = 99,
		DEXT = 100,
		DEXTM = 101,
		DEXTU = 102,
		DI = 103,
		DINS = 104,
		DINSM = 105,
		DINSU = 106,
		DIV_S = 107,
		DIV_U = 108,
		DLSA = 109,
		DMFC0 = 110,
		DMFC1 = 111,
		DMFC2 = 112,
		DMTC0 = 113,
		DMTC1 = 114,
		DMTC2 = 115,
		DMULT = 116,
		DMULTU = 117,
		DOTP_S = 118,
		DOTP_U = 119,
		DPADD_S = 120,
		DPADD_U = 121,
		DPAQX_SA = 122,
		DPAQX_S = 123,
		DPAQ_SA = 124,
		DPAQ_S = 125,
		DPAU = 126,
		DPAX = 127,
		DPA = 128,
		DPSQX_SA = 129,
		DPSQX_S = 130,
		DPSQ_SA = 131,
		DPSQ_S = 132,
		DPSUB_S = 133,
		DPSUB_U = 134,
		DPSU = 135,
		DPSX = 136,
		DPS = 137,
		DROTR = 138,
		DROTR32 = 139,
		DROTRV = 140,
		DSBH = 141,
		DDIV = 142,
		DSHD = 143,
		DSLL = 144,
		DSLL32 = 145,
		DSLLV = 146,
		DSRA = 147,
		DSRA32 = 148,
		DSRAV = 149,
		DSRL = 150,
		DSRL32 = 151,
		DSRLV = 152,
		DSUBU = 153,
		DDIVU = 154,
		DIV = 155,
		DIVU = 156,
		EI = 157,
		ERET = 158,
		EXT = 159,
		EXTP = 160,
		EXTPDP = 161,
		EXTPDPV = 162,
		EXTPV = 163,
		EXTRV_RS = 164,
		EXTRV_R = 165,
		EXTRV_S = 166,
		EXTRV = 167,
		EXTR_RS = 168,
		EXTR_R = 169,
		EXTR_S = 170,
		EXTR = 171,
		ABS = 172,
		FADD = 173,
		FCAF = 174,
		FCEQ = 175,
		FCLASS = 176,
		FCLE = 177,
		FCLT = 178,
		FCNE = 179,
		FCOR = 180,
		FCUEQ = 181,
		FCULE = 182,
		FCULT = 183,
		FCUNE = 184,
		FCUN = 185,
		FDIV = 186,
		FEXDO = 187,
		FEXP2 = 188,
		FEXUPL = 189,
		FEXUPR = 190,
		FFINT_S = 191,
		FFINT_U = 192,
		FFQL = 193,
		FFQR = 194,
		FILL = 195,
		FLOG2 = 196,
		FLOOR = 197,
		FMADD = 198,
		FMAX_A = 199,
		FMAX = 200,
		FMIN_A = 201,
		FMIN = 202,
		MOV = 203,
		FMSUB = 204,
		FMUL = 205,
		MUL = 206,
		NEG = 207,
		FRCP = 208,
		FRINT = 209,
		FRSQRT = 210,
		FSAF = 211,
		FSEQ = 212,
		FSLE = 213,
		FSLT = 214,
		FSNE = 215,
		FSOR = 216,
		FSQRT = 217,
		SQRT = 218,
		FSUB = 219,
		SUB = 220,
		FSUEQ = 221,
		FSULE = 222,
		FSULT = 223,
		FSUNE = 224,
		FSUN = 225,
		FTINT_S = 226,
		FTINT_U = 227,
		FTQ = 228,
		FTRUNC_S = 229,
		FTRUNC_U = 230,
		HADD_S = 231,
		HADD_U = 232,
		HSUB_S = 233,
		HSUB_U = 234,
		ILVEV = 235,
		ILVL = 236,
		ILVOD = 237,
		ILVR = 238,
		INS = 239,
		INSERT = 240,
		INSV = 241,
		INSVE = 242,
		J = 243,
		JAL = 244,
		JALR = 245,
		JR = 246,
		JRC = 247,
		JALRC = 248,
		LB = 249,
		LBUX = 250,
		LBU = 251,
		LD = 252,
		LDC1 = 253,
		LDC2 = 254,
		LDI = 255,
		LDL = 256,
		LDR = 257,
		LDXC1 = 258,
		LH = 259,
		LHX = 260,
		LHU = 261,
		LL = 262,
		LLD = 263,
		LSA = 264,
		LUXC1 = 265,
		LUI = 266,
		LW = 267,
		LWC1 = 268,
		LWC2 = 269,
		LWL = 270,
		LWR = 271,
		LWU = 272,
		LWX = 273,
		LWXC1 = 274,
		LI = 275,
		MADD = 276,
		MADDR_Q = 277,
		MADDU = 278,
		MADDV = 279,
		MADD_Q = 280,
		MAQ_SA = 281,
		MAQ_S = 282,
		MAXI_S = 283,
		MAXI_U = 284,
		MAX_A = 285,
		MAX_S = 286,
		MAX_U = 287,
		MFC0 = 288,
		MFC1 = 289,
		MFC2 = 290,
		MFHC1 = 291,
		MFHI = 292,
		MFLO = 293,
		MINI_S = 294,
		MINI_U = 295,
		MIN_A = 296,
		MIN_S = 297,
		MIN_U = 298,
		MODSUB = 299,
		MOD_S = 300,
		MOD_U = 301,
		MOVE = 302,
		MOVF = 303,
		MOVN = 304,
		MOVT = 305,
		MOVZ = 306,
		MSUB = 307,
		MSUBR_Q = 308,
		MSUBU = 309,
		MSUBV = 310,
		MSUB_Q = 311,
		MTC0 = 312,
		MTC1 = 313,
		MTC2 = 314,
		MTHC1 = 315,
		MTHI = 316,
		MTHLIP = 317,
		MTLO = 318,
		MULEQ_S = 319,
		MULEU_S = 320,
		MULQ_RS = 321,
		MULQ_S = 322,
		MULR_Q = 323,
		MULSAQ_S = 324,
		MULSA = 325,
		MULT = 326,
		MULTU = 327,
		MULV = 328,
		MUL_Q = 329,
		MUL_S = 330,
		NLOC = 331,
		NLZC = 332,
		NMADD = 333,
		NMSUB = 334,
		NOR = 335,
		NORI = 336,
		NOT = 337,
		OR = 338,
		ORI = 339,
		PACKRL = 340,
		PCKEV = 341,
		PCKOD = 342,
		PCNT = 343,
		PICK = 344,
		PRECEQU = 345,
		PRECEQ = 346,
		PRECEU = 347,
		PRECRQU_S = 348,
		PRECRQ = 349,
		PRECRQ_RS = 350,
		PRECR = 351,
		PRECR_SRA = 352,
		PRECR_SRA_R = 353,
		PREPEND = 354,
		RADDU = 355,
		RDDSP = 356,
		RDHWR = 357,
		REPLV = 358,
		REPL = 359,
		ROTR = 360,
		ROTRV = 361,
		ROUND = 362,
		SAT_S = 363,
		SAT_U = 364,
		SB = 365,
		SC = 366,
		SCD = 367,
		SD = 368,
		SDC1 = 369,
		SDC2 = 370,
		SDL = 371,
		SDR = 372,
		SDXC1 = 373,
		SEB = 374,
		SEH = 375,
		SH = 376,
		SHF = 377,
		SHILO = 378,
		SHILOV = 379,
		SHLLV = 380,
		SHLLV_S = 381,
		SHLL = 382,
		SHLL_S = 383,
		SHRAV = 384,
		SHRAV_R = 385,
		SHRA = 386,
		SHRA_R = 387,
		SHRLV = 388,
		SHRL = 389,
		SLDI = 390,
		SLD = 391,
		SLL = 392,
		SLLI = 393,
		SLLV = 394,
		SLT = 395,
		SLTI = 396,
		SLTIU = 397,
		SLTU = 398,
		SPLATI = 399,
		SPLAT = 400,
		SRA = 401,
		SRAI = 402,
		SRARI = 403,
		SRAR = 404,
		SRAV = 405,
		SRL = 406,
		SRLI = 407,
		SRLRI = 408,
		SRLR = 409,
		SRLV = 410,
		ST = 411,
		SUBQH = 412,
		SUBQH_R = 413,
		SUBQ = 414,
		SUBQ_S = 415,
		SUBSUS_U = 416,
		SUBSUU_S = 417,
		SUBS_S = 418,
		SUBS_U = 419,
		SUBUH = 420,
		SUBUH_R = 421,
		SUBU = 422,
		SUBU_S = 423,
		SUBVI = 424,
		SUBV = 425,
		SUXC1 = 426,
		SW = 427,
		SWC1 = 428,
		SWC2 = 429,
		SWL = 430,
		SWR = 431,
		SWXC1 = 432,
		SYNC = 433,
		SYSCALL = 434,
		TEQ = 435,
		TEQI = 436,
		TGE = 437,
		TGEI = 438,
		TGEIU = 439,
		TGEU = 440,
		TLT = 441,
		TLTI = 442,
		TLTIU = 443,
		TLTU = 444,
		TNE = 445,
		TNEI = 446,
		TRUNC = 447,
		VSHF = 448,
		WAIT = 449,
		WRDSP = 450,
		WSBH = 451,
		XOR = 452,
		XORI = 453,
		NOP = 454,
		NEGU = 455,
		MAX = 456,
	}

	[CCode (cname="mips_reg", cprefix="MIPS_REG_", cheader_filename="mips.h")]
	public enum MipsReg {
		INVALID = 0,
		@0,
		@1,
		@2,
		@3,
		@4,
		@5,
		@6,
		@7,
		@8,
		@9,
		@10,
		@11,
		@12,
		@13,
		@14,
		@15,
		@16,
		@17,
		@18,
		@19,
		@20,
		@21,
		@22,
		@23,
		@24,
		@25,
		@26,
		@27,
		@28,
		@29,
		@30,
		@31,
		DSPCCOND,
		DSPCARRY,
		DSPEFI,
		DSPOUTFLAG,
		DSPOUTFLAG16_19,
		DSPOUTFLAG20,
		DSPOUTFLAG21,
		DSPOUTFLAG22,
		DSPOUTFLAG23,
		DSPPOS,
		DSPSCOUNT,
		AC0,
		AC1,
		AC2,
		AC3,

		F0,
		F1,
		F2,
		F3,
		F4,
		F5,
		F6,
		F7,
		F8,
		F9,
		F10,
		F11,
		F12,
		F13,
		F14,
		F15,
		F16,
		F17,
		F18,
		F19,
		F20,
		F21,
		F22,
		F23,
		F24,
		F25,
		F26,
		F27,
		F28,
		F29,
		F30,
		F31,

		FCC0,
		FCC1,
		FCC2,
		FCC3,
		FCC4,
		FCC5,
		FCC6,
		FCC7,

		W0,
		W1,
		W2,
		W3,
		W4,
		W5,
		W6,
		W7,
		W8,
		W9,
		W10,
		W11,
		W12,
		W13,
		W14,
		W15,
		W16,
		W17,
		W18,
		W19,
		W20,
		W21,
		W22,
		W23,
		W24,
		W25,
		W26,
		W27,
		W28,
		W29,
		W30,
		W31,

		MAX,

		ZERO = @0,
		AT = @1,
		V0 = @2,
		V1 = @3,
		A0 = @4,
		A1 = @5,
		A2 = @6,
		A3 = @7,
		T0 = @8,
		T1 = @9,
		T2 = @10,
		T3 = @11,
		T4 = @12,
		T5 = @13,
		T6 = @14,
		T7 = @15,
		S0 = @16,
		S1 = @17,
		S2 = @18,
		S3 = @19,
		S4 = @20,
		S5 = @21,
		S6 = @22,
		S7 = @23,
		T8 = @24,
		T9 = @25,
		K0 = @26,
		K1 = @27,
		GP = @28,
		SP = @29,
		FP = @30,
		S8 = @30,
		RA = @31,

		HI0 = AC0,
		HI1 = AC1,
		HI2 = AC2,
		HI3 = AC3,

		LO0 = HI0,
		LO1 = HI1,
		LO2 = HI2,
		LO3 = HI3,
	}

	[CCode (cname="mips_insn_group", cprefix="MIPS_GRP_", cheader_filename="mips.h")]
	public enum MipsInsnGroup {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js mips mips_insn_group
		*/
		INVALID = 0,
		BITCOUNT = 1,
		DSP = 2,
		DSPR2 = 3,
		FPIDX = 4,
		MSA = 5,
		MIPS32R2 = 6,
		MIPS64 = 7,
		MIPS64R2 = 8,
		SEINREG = 9,
		STDENC = 10,
		SWAP = 11,
		MICROMIPS = 12,
		MIPS16MODE = 13,
		FP64BIT = 14,
		NONANSFPMATH = 15,
		NOTFP64BIT = 16,
		NOTINMICROMIPS = 17,
		NOTNACL = 18,
		JUMP = 19,
		MAX = 20,
	}
}
